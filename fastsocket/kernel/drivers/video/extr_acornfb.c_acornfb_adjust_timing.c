
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct fb_var_screeninfo {int xres; int xres_virtual; int bits_per_pixel; int yres; int accel_flags; int yres_virtual; int vmode; int yoffset; int hsync_len; int left_margin; int right_margin; int vsync_len; scalar_t__ xoffset; } ;
struct TYPE_3__ {int smem_len; scalar_t__ smem_start; } ;
struct fb_info {TYPE_1__ fix; } ;
struct TYPE_4__ {int vram_half_sam; scalar_t__ screen_end; scalar_t__ using_vram; } ;


 int EINVAL ;
 int FB_ACCELF_TEXT ;
 int FB_VMODE_YWRAP ;
 TYPE_2__ current_par ;

__attribute__((used)) static int
acornfb_adjust_timing(struct fb_info *info, struct fb_var_screeninfo *var, u_int fontht)
{
 u_int font_line_len, sam_size, min_size, size, nr_y;


 var->xres = (var->xres + 1) & ~1;




 var->xres_virtual = var->xres;
 var->xoffset = 0;

 if (current_par.using_vram)
  sam_size = current_par.vram_half_sam * 2;
 else
  sam_size = 16;
 font_line_len = var->xres * var->bits_per_pixel * fontht / 8;
 min_size = var->xres * var->yres * var->bits_per_pixel / 8;





 if (min_size > info->fix.smem_len)
  return -EINVAL;




 for (size = info->fix.smem_len;
      nr_y = size / font_line_len, min_size <= size;
      size -= sam_size) {
  if (nr_y * font_line_len == size)
   break;
 }
 nr_y *= fontht;

 if (var->accel_flags & FB_ACCELF_TEXT) {
  if (min_size > size) {



   size = info->fix.smem_len;
   var->yres_virtual = size / (font_line_len / fontht);
  } else
   var->yres_virtual = nr_y;
 } else if (var->yres_virtual > nr_y)
  var->yres_virtual = nr_y;

 current_par.screen_end = info->fix.smem_start + size;




 if (var->yres > var->yres_virtual)
  var->yres = var->yres_virtual;

 if (var->vmode & FB_VMODE_YWRAP) {
  if (var->yoffset > var->yres_virtual)
   var->yoffset = var->yres_virtual;
 } else {
  if (var->yoffset + var->yres > var->yres_virtual)
   var->yoffset = var->yres_virtual - var->yres;
 }


 var->hsync_len = (var->hsync_len + 1) & ~1;
 if (var->vsync_len < 1)
  var->vsync_len = 1;

 return 0;
}
