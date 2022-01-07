
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_info {TYPE_2__* fbops; TYPE_1__* mode; } ;
struct fb_fillrect {int rop; int color; int height; int width; int dy; int dx; } ;
struct TYPE_4__ {int (* fb_fillrect ) (struct fb_info*,struct fb_fillrect const*) ;} ;
struct TYPE_3__ {int yres; int xres; } ;


 int ROP_COPY ;
 int stub1 (struct fb_info*,struct fb_fillrect const*) ;

__attribute__((used)) static void tmiofb_clearscreen(struct fb_info *info)
{
 const struct fb_fillrect rect = {
  .dx = 0,
  .dy = 0,
  .width = info->mode->xres,
  .height = info->mode->yres,
  .color = 0,
  .rop = ROP_COPY,
 };

 info->fbops->fb_fillrect(info, &rect);
}
