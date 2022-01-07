
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int doupdate () ;
 scalar_t__ getcurx (int *) ;
 scalar_t__ getcury (int *) ;
 scalar_t__ getparx (int *) ;
 scalar_t__ getpary (int *) ;
 int wmove (int *,scalar_t__,scalar_t__) ;
 int wnoutrefresh (int *) ;

void
dlg_set_focus(WINDOW *parent, WINDOW *win)
{
    if (win != 0) {
 (void) wmove(parent,
       getpary(win) + getcury(win),
       getparx(win) + getcurx(win));
 (void) wnoutrefresh(win);
 (void) doupdate();
    }
}
