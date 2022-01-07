
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int bits_per_pixel; int xres_virtual; int yres_virtual; } ;
struct fb_info {TYPE_1__ var; scalar_t__ par; } ;
struct fb_fillrect {int width; int height; int dx; int dy; int color; } ;
struct atafb_par {int next_line; } ;


 int atafb_iplan2p2_fillrect (struct fb_info*,int ,int ,int,int,int,int) ;
 int atafb_iplan2p4_fillrect (struct fb_info*,int ,int ,int,int,int,int) ;
 int atafb_iplan2p8_fillrect (struct fb_info*,int ,int ,int,int,int,int) ;
 int atafb_mfb_fillrect (struct fb_info*,int ,int ,int,int,int,int) ;
 int cfb_fillrect (struct fb_info*,struct fb_fillrect const*) ;

__attribute__((used)) static void atafb_fillrect(struct fb_info *info, const struct fb_fillrect *rect)
{
 struct atafb_par *par = (struct atafb_par *)info->par;
 int x2, y2;
 u32 width, height;

 if (!rect->width || !rect->height)
  return;
 x2 = rect->dx + rect->width;
 y2 = rect->dy + rect->height;
 x2 = x2 < info->var.xres_virtual ? x2 : info->var.xres_virtual;
 y2 = y2 < info->var.yres_virtual ? y2 : info->var.yres_virtual;
 width = x2 - rect->dx;
 height = y2 - rect->dy;

 if (info->var.bits_per_pixel == 1)
  atafb_mfb_fillrect(info, par->next_line, rect->color,
       rect->dy, rect->dx, height, width);
 else if (info->var.bits_per_pixel == 2)
  atafb_iplan2p2_fillrect(info, par->next_line, rect->color,
     rect->dy, rect->dx, height, width);
 else if (info->var.bits_per_pixel == 4)
  atafb_iplan2p4_fillrect(info, par->next_line, rect->color,
     rect->dy, rect->dx, height, width);
 else
  atafb_iplan2p8_fillrect(info, par->next_line, rect->color,
     rect->dy, rect->dx, height, width);

 return;
}
