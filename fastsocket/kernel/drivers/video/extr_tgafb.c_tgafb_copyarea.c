
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {unsigned long xres_virtual; unsigned long yres_virtual; unsigned long bits_per_pixel; } ;
struct TYPE_3__ {unsigned long line_length; } ;
struct fb_info {TYPE_2__ var; TYPE_1__ fix; } ;
struct fb_copyarea {unsigned long dx; unsigned long dy; unsigned long width; unsigned long height; unsigned long sx; unsigned long sy; } ;


 int cfb_copyarea (struct fb_info*,struct fb_copyarea const*) ;
 int copyarea_backward_8bpp (struct fb_info*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,struct fb_copyarea const*) ;
 int copyarea_foreward_8bpp (struct fb_info*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int copyarea_line_32bpp (struct fb_info*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int copyarea_line_8bpp (struct fb_info*,unsigned long,unsigned long,unsigned long,unsigned long) ;

__attribute__((used)) static void
tgafb_copyarea(struct fb_info *info, const struct fb_copyarea *area)
{
 unsigned long dx, dy, width, height, sx, sy, vxres, vyres;
 unsigned long line_length, bpp;

 dx = area->dx;
 dy = area->dy;
 width = area->width;
 height = area->height;
 sx = area->sx;
 sy = area->sy;
 vxres = info->var.xres_virtual;
 vyres = info->var.yres_virtual;
 line_length = info->fix.line_length;


 if (dx > vxres || sx > vxres || dy > vyres || sy > vyres)
  return;


 if (dx + width > vxres)
  width = vxres - dx;
 if (dy + height > vyres)
  height = vyres - dy;


 if (sx + width > vxres || sy + height > vyres)
  return;

 bpp = info->var.bits_per_pixel;


 if (width * (bpp >> 3) == line_length) {
  if (bpp == 8)
   copyarea_line_8bpp(info, dy, sy, height, width);
  else
   copyarea_line_32bpp(info, dy, sy, height, width);
 }




 else if (bpp == 32)
  cfb_copyarea(info, area);



 else if (dy == sy && dx > sx && dx < sx + width)
  copyarea_backward_8bpp(info, dx, dy, sx, sy, height,
           width, line_length, area);
 else
  copyarea_foreward_8bpp(info, dx, dy, sx, sy, height,
           width, line_length);
}
