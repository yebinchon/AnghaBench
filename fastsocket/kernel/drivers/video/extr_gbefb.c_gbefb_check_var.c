
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct gbe_timing_info {scalar_t__ vsync_start; scalar_t__ vsync_end; scalar_t__ hsync_start; scalar_t__ hsync_end; scalar_t__ height; scalar_t__ vtotal; scalar_t__ width; scalar_t__ htotal; } ;
struct TYPE_10__ {int length; scalar_t__ msb_right; int offset; } ;
struct TYPE_9__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_8__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_7__ {int offset; int length; scalar_t__ msb_right; } ;
struct fb_var_screeninfo {int bits_per_pixel; int xres; int yres; int pixclock; int xres_virtual; int yres_virtual; int vmode; scalar_t__ vsync_len; scalar_t__ hsync_len; scalar_t__ lower_margin; scalar_t__ upper_margin; scalar_t__ right_margin; scalar_t__ left_margin; TYPE_5__ transp; TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; scalar_t__ grayscale; int yoffset; int xoffset; } ;
struct TYPE_6__ {int yoffset; int xoffset; } ;
struct fb_info {TYPE_1__ var; } ;


 int EINVAL ;
 int ENOMEM ;
 int FB_VMODE_CONUPDATE ;
 int FB_VMODE_YWRAP ;
 int compute_gbe_timing (struct fb_var_screeninfo*,struct gbe_timing_info*) ;
 unsigned int gbe_mem_size ;
 int ypan ;
 int ywrap ;

__attribute__((used)) static int gbefb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 unsigned int line_length;
 struct gbe_timing_info timing;
 int ret;


 if (var->bits_per_pixel <= 8)
  var->bits_per_pixel = 8;
 else if (var->bits_per_pixel <= 16)
  var->bits_per_pixel = 16;
 else if (var->bits_per_pixel <= 32)
  var->bits_per_pixel = 32;
 else
  return -EINVAL;



 if ((var->xres * var->yres * var->bits_per_pixel) & 4095)
  return -EINVAL;

 var->grayscale = 0;

 ret = compute_gbe_timing(var, &timing);
 var->pixclock = ret;
 if (ret < 0)
  return -EINVAL;


 if (var->xres > var->xres_virtual || (!ywrap && !ypan))
  var->xres_virtual = var->xres;
 if (var->yres > var->yres_virtual || (!ywrap && !ypan))
  var->yres_virtual = var->yres;

 if (var->vmode & FB_VMODE_CONUPDATE) {
  var->vmode |= FB_VMODE_YWRAP;
  var->xoffset = info->var.xoffset;
  var->yoffset = info->var.yoffset;
 }


 var->grayscale = 0;


 line_length = var->xres_virtual * var->bits_per_pixel / 8;
 if (line_length * var->yres_virtual > gbe_mem_size)
  return -ENOMEM;

 switch (var->bits_per_pixel) {
 case 8:
  var->red.offset = 0;
  var->red.length = 8;
  var->green.offset = 0;
  var->green.length = 8;
  var->blue.offset = 0;
  var->blue.length = 8;
  var->transp.offset = 0;
  var->transp.length = 0;
  break;
 case 16:
  var->red.offset = 10;
  var->red.length = 5;
  var->green.offset = 5;
  var->green.length = 5;
  var->blue.offset = 0;
  var->blue.length = 5;
  var->transp.offset = 0;
  var->transp.length = 0;
  break;
 case 32:
  var->red.offset = 24;
  var->red.length = 8;
  var->green.offset = 16;
  var->green.length = 8;
  var->blue.offset = 8;
  var->blue.length = 8;
  var->transp.offset = 0;
  var->transp.length = 8;
  break;
 }
 var->red.msb_right = 0;
 var->green.msb_right = 0;
 var->blue.msb_right = 0;
 var->transp.msb_right = 0;

 var->left_margin = timing.htotal - timing.hsync_end;
 var->right_margin = timing.hsync_start - timing.width;
 var->upper_margin = timing.vtotal - timing.vsync_end;
 var->lower_margin = timing.vsync_start - timing.height;
 var->hsync_len = timing.hsync_end - timing.hsync_start;
 var->vsync_len = timing.vsync_end - timing.vsync_start;

 return 0;
}
