
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef unsigned int u32 ;
struct pm3_par {int dummy; } ;
struct TYPE_12__ {scalar_t__ visual; } ;
struct TYPE_10__ {unsigned int offset; int length; } ;
struct TYPE_9__ {unsigned int offset; int length; } ;
struct TYPE_8__ {unsigned int offset; int length; } ;
struct TYPE_7__ {unsigned int offset; int length; } ;
struct TYPE_11__ {int bits_per_pixel; TYPE_4__ transp; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; scalar_t__ grayscale; } ;
struct fb_info {TYPE_6__ fix; scalar_t__ pseudo_palette; TYPE_5__ var; struct pm3_par* par; } ;


 unsigned int CNVT_TOHW (unsigned int,int ) ;
 int EINVAL ;
 scalar_t__ FB_VISUAL_DIRECTCOLOR ;
 scalar_t__ FB_VISUAL_PSEUDOCOLOR ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 int pm3fb_set_color (struct pm3_par*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int pm3fb_setcolreg(unsigned regno, unsigned red, unsigned green,
      unsigned blue, unsigned transp,
      struct fb_info *info)
{
 struct pm3_par *par = info->par;

 if (regno >= 256)
    return -EINVAL;



 if (info->var.grayscale)
    red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
 red = ((((red) << (info->var.red.length)) + 0x7FFF - (red)) >> 16);
 green = ((((green) << (info->var.green.length)) + 0x7FFF - (green)) >> 16);
 blue = ((((blue) << (info->var.blue.length)) + 0x7FFF - (blue)) >> 16);
 transp = ((((transp) << (info->var.transp.length)) + 0x7FFF - (transp)) >> 16);


 if (info->fix.visual == FB_VISUAL_TRUECOLOR ||
 info->fix.visual == FB_VISUAL_DIRECTCOLOR) {
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
  case 32:
   ((u32 *)(info->pseudo_palette))[regno] = v;
   break;
  }
  return 0;
 } else if (info->fix.visual == FB_VISUAL_PSEUDOCOLOR)
  pm3fb_set_color(par, regno, red, green, blue);

 return 0;
}
