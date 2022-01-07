
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int offset; int length; scalar_t__ msb_right; } ;
struct TYPE_3__ {int offset; int length; scalar_t__ msb_right; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_2__ transp; TYPE_1__ blue; TYPE_1__ green; TYPE_1__ red; } ;
struct fb_info {int monspecs; } ;


 int EINVAL ;
 int acornfb_adjust_timing (struct fb_info*,struct fb_var_screeninfo*,int) ;
 int acornfb_valid_pixrate (struct fb_var_screeninfo*) ;
 int acornfb_validate_timing (struct fb_var_screeninfo*,int *) ;

__attribute__((used)) static int
acornfb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 u_int fontht;
 int err;




 fontht = 8;

 var->red.msb_right = 0;
 var->green.msb_right = 0;
 var->blue.msb_right = 0;
 var->transp.msb_right = 0;

 switch (var->bits_per_pixel) {
 case 1: case 2: case 4: case 8:
  var->red.offset = 0;
  var->red.length = var->bits_per_pixel;
  var->green = var->red;
  var->blue = var->red;
  var->transp.offset = 0;
  var->transp.length = 0;
  break;
 default:
  return -EINVAL;
 }




 if (!acornfb_valid_pixrate(var))
  return -EINVAL;





 err = acornfb_adjust_timing(info, var, fontht);
 if (err)
  return err;





 return acornfb_validate_timing(var, &info->monspecs);
}
