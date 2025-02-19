
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int width; unsigned int height; } ;
struct vc_data {unsigned int vc_cols; unsigned int vc_rows; scalar_t__ vc_hi_font_mask; TYPE_1__ vc_font; } ;
struct TYPE_5__ {unsigned int yres; unsigned int xres; unsigned int xres_virtual; unsigned int yres_virtual; scalar_t__ xoffset; scalar_t__ yoffset; } ;
struct fb_info {TYPE_3__* fbops; TYPE_2__ var; } ;
struct fb_fillrect {unsigned int height; unsigned int width; scalar_t__ dy; scalar_t__ dx; int rop; int color; } ;
struct TYPE_6__ {int (* fb_fillrect ) (struct fb_info*,struct fb_fillrect*) ;} ;


 int ROP_COPY ;
 int attr_bgcol_ec (int,struct vc_data*,struct fb_info*) ;
 int stub1 (struct fb_info*,struct fb_fillrect*) ;
 int stub2 (struct fb_info*,struct fb_fillrect*) ;

__attribute__((used)) static void ccw_clear_margins(struct vc_data *vc, struct fb_info *info,
        int bottom_only)
{
 unsigned int cw = vc->vc_font.width;
 unsigned int ch = vc->vc_font.height;
 unsigned int rw = info->var.yres - (vc->vc_cols*cw);
 unsigned int bh = info->var.xres - (vc->vc_rows*ch);
 unsigned int bs = vc->vc_rows*ch;
 struct fb_fillrect region;
 int bgshift = (vc->vc_hi_font_mask) ? 13 : 12;

 region.color = attr_bgcol_ec(bgshift,vc,info);
 region.rop = ROP_COPY;

 if (rw && !bottom_only) {
  region.dx = 0;
  region.dy = info->var.yoffset;
  region.height = rw;
  region.width = info->var.xres_virtual;
  info->fbops->fb_fillrect(info, &region);
 }

 if (bh) {
  region.dx = info->var.xoffset + bs;
  region.dy = 0;
                region.height = info->var.yres_virtual;
                region.width = bh;
  info->fbops->fb_fillrect(info, &region);
 }
}
