
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int dlg_draw_box2 (int *,int,int,int,int,int ,int ,int ) ;

void
dlg_draw_box(WINDOW *win, int y, int x, int height, int width,
      chtype boxchar, chtype borderchar)
{
    dlg_draw_box2(win, y, x, height, width, boxchar, borderchar, boxchar);
}
