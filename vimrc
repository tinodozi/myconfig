""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" 	Author: Tino Dozi
" 	Email: tinodozi@gmail.com
" 	Date: 2024-05-28
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Configuracion de VIM
set nocompatible
filetype indent on
set shiftwidth=4
"set nowrap
set background=dark
colorscheme gruvbox
syntax on
set autoindent
set number
set relativenumber
set mouse=a
set hlsearch
set ignorecase
set incsearch
filetype plugin on
set tabstop=4
autocmd FileType python map <buffer> <F5> :!clear; python3 %<CR>
set colorcolumn=80
set linebreak

"set list
"set listchars=tab:\ \ ┊
"set listchars=eol:↓,tab:\ \ ┊,trail:●,extends:…,precedes:…,space:·


syntax on
set t_Co=256 " Asegura soporte para 256 colores


" Bloque para modo normal, visual y replace y barra vertical para modo insert.
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


"set number
"syntax enable
"set relativenumber
"set mouse=a
"set numberwidth=1
""set clipboard=unnamedplus
"set showcmd
"set ruler
"set encoding=utf-8
"set showmatch
""set ts=4 sw=2
"set et sts=4 ts=4 sw=4
"set laststatus=2
"set noshowmode
"
"set clipboard+=unnamed
"set paste
"set go+=a
"
"set autoindent
"set smartindent
"
""" Lugar donde va a ir a buscar mis pluggins
""call plug#begin('~/.vim/plugged')
"""
"""" Temas
""Plug 'morhetz/gruvbox'
"""
"""" IDE
""Plug 'sheerun/vim-polyglot'
""Plug 'jiangmiao/auto-pairs'
""Plug 'alvan/vim-closetag'
"""
""call plug#end()
"
"set background=dark
"colorscheme gruvbox
"
"
"" Background transparente
"" hi Normal guibg=NONE ctermbg=NONE

let mapleader=" "
" let NERDTreeQuitOpen=1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader><Leader> :Lex<CR>
nmap <Leader>h <C-w>s
nmap <Leader>v <C-w>v
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
"nmap <Leader>tt :!python3 %<CR>
nmap <Leader>tt <C-w>s <C-w>j :belowright terminal<CR>a
nmap <C-i> :bp<CR>
nmap <C-o> :bn<CR>


" Líder + cc: Comentar la línea o selección (usa '#' como símbolo)
vmap <Leader>cc :s/^/# /<CR>
nmap <Leader>cc I# <Esc>



" Barra de estado casera (sin plugins)
" status bar colors
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

" Status line
" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

" Status Line Custom
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                      " File path, modified, readonly, helpfile, preview
"set statusline+=%1*\ %t\                       			 " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e



