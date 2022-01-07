
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_7__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_6__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_5__ {int offset; int length; scalar_t__ msb_right; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; int yres; int yres_virtual; int xres; int xres_virtual; scalar_t__ nonstd; scalar_t__ rotate; scalar_t__ grayscale; } ;
struct fb_info {int dummy; } ;


 int EINVAL ;
 int carmine_find_mode (struct fb_var_screeninfo*) ;

__attribute__((used)) static int carmine_check_var(struct fb_var_screeninfo *var,
  struct fb_info *info)
{
 int ret;

 ret = carmine_find_mode(var);
 if (ret < 0)
  return ret;

 if (var->grayscale || var->rotate || var->nonstd)
  return -EINVAL;

 var->xres_virtual = var->xres;
 var->yres_virtual = var->yres;

 var->bits_per_pixel = 32;







 var->transp.offset = 24;
 var->red.offset = 16;
 var->green.offset = 8;
 var->blue.offset = 0;


 var->red.length = 8;
 var->green.length = 8;
 var->blue.length = 8;
 var->transp.length = 8;

 var->red.msb_right = 0;
 var->green.msb_right = 0;
 var->blue.msb_right = 0;
 var->transp.msb_right = 0;
 return 0;
}
