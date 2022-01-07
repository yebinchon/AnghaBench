
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
typedef int u32 ;
struct TYPE_9__ {int length; int offset; } ;
struct TYPE_8__ {int length; int offset; } ;
struct TYPE_7__ {int length; int offset; } ;
struct TYPE_10__ {TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; scalar_t__ grayscale; } ;
struct TYPE_6__ {scalar_t__ visual; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_5__ var; TYPE_1__ fix; } ;


 int BFIN_LCD_NBR_PALETTE_ENTRIES ;
 int EINVAL ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;

__attribute__((used)) static int bfin_bf54x_fb_setcolreg(u_int regno, u_int red, u_int green,
       u_int blue, u_int transp,
       struct fb_info *info)
{
 if (regno >= BFIN_LCD_NBR_PALETTE_ENTRIES)
  return -EINVAL;

 if (info->var.grayscale) {

  red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
 }

 if (info->fix.visual == FB_VISUAL_TRUECOLOR) {

  u32 value;

  if (regno > 16)
   return -EINVAL;

  red >>= (16 - info->var.red.length);
  green >>= (16 - info->var.green.length);
  blue >>= (16 - info->var.blue.length);

  value = (red << info->var.red.offset) |
      (green << info->var.green.offset) |
      (blue << info->var.blue.offset);
  value &= 0xFFFFFF;

  ((u32 *) (info->pseudo_palette))[regno] = value;

 }

 return 0;
}
