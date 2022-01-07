
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xoffset; int yoffset; } ;
struct display {TYPE_1__ var; scalar_t__ fb_info; } ;
struct aafb_cursor {int x; int y; int enable; int vbl_cnt; scalar_t__ on; } ;
struct aafb_info {struct aafb_cursor cursor; } ;





 int CURSOR_DRAW_DELAY ;
 int aafb_set_cursor (struct aafb_info*,scalar_t__) ;
 int fontheight (struct display*) ;
 int fontwidth (struct display*) ;

__attribute__((used)) static void aafbcon_cursor(struct display *disp, int mode, int x, int y)
{
 struct aafb_info *info = (struct aafb_info *)disp->fb_info;
 struct aafb_cursor *c = &info->cursor;

 x *= fontwidth(disp);
 y *= fontheight(disp);

 if (c->x == x && c->y == y && (mode == 129) == !c->enable)
  return;

 c->enable = 0;
 if (c->on)
  aafb_set_cursor(info, 0);
 c->x = x - disp->var.xoffset;
 c->y = y - disp->var.yoffset;

 switch (mode) {
  case 129:
   c->on = 0;
   break;
  case 130:
  case 128:
   if (c->on)
    aafb_set_cursor(info, c->on);
   else
    c->vbl_cnt = CURSOR_DRAW_DELAY;
   c->enable = 1;
   break;
 }
}
