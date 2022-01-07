
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int border_attr ;
 int dialog_attr ;
 int dlg_draw_bottom_box2 (int *,int ,int ,int ) ;

void
dlg_draw_bottom_box(WINDOW *win)
{
    dlg_draw_bottom_box2(win, border_attr, dialog_attr, dialog_attr);
}
