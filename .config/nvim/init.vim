"  plugins {{{
	call plug#begin('~/.vim/plugs')
	
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'tpope/vim-surround'
	Plug 'preservim/nerdtree'
	Plug 'joshdick/onedark.vim/'	
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'}
	let g:deoplete#sources#go#gocode_binary = '/Users/devinr/golibs/bin/gocode' 
	let g:deoplete#enable_at_startup = 1
	
	call plug#end()
" }}}

" basic settings {{{
	set number numberwidth=3
	set wrap
	set shiftround
	set shiftwidth=2
	set timeoutlen=500 
	set tabstop=2	
	set termguicolors
	filetype plugin indent on
	syntax on
	colorscheme onedark
" }}}

" mappings {{{
	let mapleader = " "
	let maplocalleader = "'"

	" normal mappings {{{
		nnoremap <space> <Nop>
		nnoremap - ddp
		nnoremap _ ddkkp
		nnoremap <leader>d <esc>ddi
		nnoremap <leader>u vwU<esc>
		nnoremap <leader>ev :vsplit $MYVIMRC<cr>
		nnoremap <leader>sv :source $MYVIMRC<cr>
		nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
		nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
		nnoremap H 0
		nnoremap L $
		nnoremap O o<esc>
		nnoremap <leader>p :execute "vsplit " . bufname("#")<cr>
		nnoremap <leader>; mqA;<esc>`q
		nnoremap <leader>f :NERDTreeToggle<cr> 
	" }}}

	" insert mappings {{{
		inoremap jk <esc>
		inoremap <esc> <nop>
	" }}}

	" visual mappings {{{
		vnoremap <leader>' <esc>`<i'<esc>`>la'<esc>
		vnoremap <leader>" <esc>`<i"<esc>`>la"<esc>
	" }}}
" }}}

" go file settings {{{
augroup go
	autocmd!
	" mappings {{{
		" normal {{{
			autocmd FileType go nnoremap <buffer> <localleader>/ I//<esc>
		" }}}
	" }}}
	" abreviations {{{
		autocmd Filetype go iabbrev <buffer> main func main() {<cr><cr>}<up> 
	" }}}
augroup END
" }}}

" c file settings {{{
augroup c
	autocmd!
	" mappings {{{
		" normal {{{
			autocmd FileType c nnoremap <buffer> <localleader>/ I//<esc>
		" }}}
	" }}}
	" abreviations {{{
		autocmd Filetype c inoreabbrev <buffer> main int main(int argc, const char** argv) {<cr><cr>}<up>	return 0;<up><esc>o
	" }}}
augroup END
" }}}

" python file settings {{{
augroup python
	autocmd!
	" mappings {{{
		" normal {{{
			autocmd FileType python nnoremap <buffer> <localleader>/ I#<esc>
		" }}}
	" }}}
augroup END
" }}}

" ruby file settings {{{
augroup ruby
	autocmd!
	" mappings {{{
		" normal {{{
			autocmd FileType ruby noremap <buffer> <localleader>/ I#<esc>
		" }}}
	" }}}
augroup END
" }}}

" javascript file settings {{{
augroup js
	autocmd!
	" mappings {{{
		" normal {{{
				autocmd FileType javascript nnoremap <buffer> <localleader>/ I//<esc>
		" }}}
	" }}}
augroup END
" }}}

" vimscript file settings {{{
augroup vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" text file settings {{{
augroup text
	autocmd!
	autocmd FileType text setlocal nonumber
augroup end
"}}}

" abreviations {{{
	iabbrev @@ zimlit2010@gmail.com
	iabbrev .c zimlit.com
" }}}

" statusline {{{
	set noruler
	set laststatus=2	
	set statusline=[%l/%L]\ %c
	set statusline+=%= 
	set statusline+=%f\ -\ %y
" }}}	
