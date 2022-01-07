
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned int u32 ;
struct pm2fb_par {unsigned int* palette; } ;
struct TYPE_14__ {int visual; } ;
struct TYPE_12__ {int length; unsigned int offset; } ;
struct TYPE_11__ {int length; unsigned int offset; } ;
struct TYPE_10__ {int length; unsigned int offset; } ;
struct TYPE_9__ {int length; unsigned int offset; } ;
struct TYPE_13__ {int bits_per_pixel; TYPE_5__ transp; TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; scalar_t__ grayscale; } ;
struct TYPE_8__ {unsigned int len; } ;
struct fb_info {TYPE_7__ fix; TYPE_6__ var; TYPE_1__ cmap; struct pm2fb_par* par; } ;


 unsigned int CNVT_TOHW (unsigned int,int) ;
 int EINVAL ;



 int set_color (struct pm2fb_par*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int pm2fb_setcolreg(unsigned regno, unsigned red, unsigned green,
      unsigned blue, unsigned transp,
      struct fb_info *info)
{
 struct pm2fb_par *par = info->par;

 if (regno >= info->cmap.len)
  return -EINVAL;






 if (info->var.grayscale)
  red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
 switch (info->fix.visual) {
 case 128:
 case 129:
  red = ((((red) << (info->var.red.length)) + 0x7FFF -(red)) >> 16);
  green = ((((green) << (info->var.green.length)) + 0x7FFF -(green)) >> 16);
  blue = ((((blue) << (info->var.blue.length)) + 0x7FFF -(blue)) >> 16);
  transp = ((((transp) << (info->var.transp.length)) + 0x7FFF -(transp)) >> 16);
  break;
 case 130:


  red = ((((red) << (8)) + 0x7FFF -(red)) >> 16);
  green = ((((green) << (8)) + 0x7FFF -(green)) >> 16);
  blue = ((((blue) << (8)) + 0x7FFF -(blue)) >> 16);

  transp = ((((transp) << (8)) + 0x7FFF -(transp)) >> 16);
  break;
 }


 if (info->fix.visual == 128) {
  u32 v;

  if (regno >= 16)
   return -EINVAL;

  v = (red << info->var.red.offset) |
   (green << info->var.green.offset) |
   (blue << info->var.blue.offset) |
   (transp << info->var.transp.offset);

  switch (info->var.bits_per_pixel) {
  case 8:
   break;
  case 16:
  case 24:
  case 32:
   par->palette[regno] = v;
   break;
  }
  return 0;
 } else if (info->fix.visual == 129)
  set_color(par, regno, red, green, blue);

 return 0;
}
