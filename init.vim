syntax on

set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*


call plug#begin('~/.vim/plugged')
" Telescope and its requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Theme: Gruvbox
Plug 'gruvbox-community/gruvbox'
call plug#end()


lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }


colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "


nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
