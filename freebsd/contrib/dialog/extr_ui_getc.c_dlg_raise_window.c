
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int doupdate () ;
 int getcurx (int *) ;
 int getcury (int *) ;
 int touchwin (int *) ;
 int wmove (int *,int ,int ) ;
 int wnoutrefresh (int *) ;

__attribute__((used)) static void
dlg_raise_window(WINDOW *win)
{
    touchwin(win);
    wmove(win, getcury(win), getcurx(win));
    wnoutrefresh(win);
    doupdate();
}
