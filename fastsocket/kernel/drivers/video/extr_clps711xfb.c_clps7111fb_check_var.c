
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int length; scalar_t__ offset; scalar_t__ msb_right; } ;
struct TYPE_4__ {scalar_t__ length; scalar_t__ offset; scalar_t__ msb_right; } ;
struct fb_var_screeninfo {int bits_per_pixel; TYPE_1__ red; TYPE_1__ blue; TYPE_1__ green; TYPE_2__ transp; } ;
struct fb_info {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
clps7111fb_check_var(struct fb_var_screeninfo *var, struct fb_info *info)
{
 var->transp.msb_right = 0;
 var->transp.offset = 0;
 var->transp.length = 0;
 var->red.msb_right = 0;
 var->red.offset = 0;
 var->red.length = var->bits_per_pixel;
 var->green = var->red;
 var->blue = var->red;

 if (var->bits_per_pixel > 4)
  return -EINVAL;

 return 0;
}
