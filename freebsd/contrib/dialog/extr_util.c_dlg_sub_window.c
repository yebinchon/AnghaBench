
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int TRUE ;
 int add_subwindow (int *,int *) ;
 int dlg_exiterr (char*,int,int,int,int) ;
 int keypad (int *,int ) ;
 int * subwin (int *,int,int,int,int) ;

WINDOW *
dlg_sub_window(WINDOW *parent, int height, int width, int y, int x)
{
    WINDOW *win;

    if ((win = subwin(parent, height, width, y, x)) == 0) {
 dlg_exiterr("Can't make sub-window at (%d,%d), size (%d,%d).\n",
      y, x, height, width);
    }

    add_subwindow(parent, win);
    (void) keypad(win, TRUE);
    return win;
}
