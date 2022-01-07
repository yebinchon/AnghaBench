
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int * dlg_new_modal_window (int ,int,int,int,int) ;
 int stdscr ;

WINDOW *
dlg_new_window(int height, int width, int y, int x)
{
    return dlg_new_modal_window(stdscr, height, width, y, x);
}
