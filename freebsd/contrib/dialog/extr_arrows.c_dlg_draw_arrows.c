
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int TRUE ;
 int dlg_draw_arrows2 (int *,int,int,int,int,int,int ,int ) ;
 int dlg_draw_helpline (int *,int ) ;
 int menubox_border2_attr ;
 int menubox_border_attr ;

void
dlg_draw_arrows(WINDOW *win,
  int top_arrow,
  int bottom_arrow,
  int x,
  int top,
  int bottom)
{
    dlg_draw_helpline(win, TRUE);
    dlg_draw_arrows2(win,
       top_arrow,
       bottom_arrow,
       x,
       top,
       bottom,
       menubox_border2_attr,
       menubox_border_attr);
}
