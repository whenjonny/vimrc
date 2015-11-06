let NERDTreeWinPos="left"

autocmd vimenter * NERDTree
wincmd w
autocmd VimEnter * wincmd w

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set mouse=v
nnoremap tn  :tabnext<CR>

set foldlevel=99
set foldmethod=manual
set nofoldenable
map <C-i> :!ctags -R --exclude=js --exclude=node_modules --exclude=snapshot --exclude=images --exclude=uploads --exclude=theme --exclude=scripts --exclude=.git --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
