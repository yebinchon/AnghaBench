
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


typedef int u_int ;
typedef int u32 ;
struct TYPE_11__ {int length; int offset; } ;
struct TYPE_10__ {int length; int offset; } ;
struct TYPE_9__ {int length; int offset; } ;
struct TYPE_8__ {int length; int offset; } ;
struct TYPE_12__ {int bits_per_pixel; TYPE_5__ transp; TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; scalar_t__ grayscale; } ;
struct TYPE_7__ {int visual; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_6__ var; TYPE_1__ fix; } ;


 int CNVT_TOHW (int,int) ;




__attribute__((used)) static int mc68x328fb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
    u_int transp, struct fb_info *info)
{
 if (regno >= 256)
  return 1;





 if (info->var.grayscale) {

  red = green = blue =
      (red * 77 + green * 151 + blue * 28) >> 8;
 }
 switch (info->fix.visual) {
 case 128:
 case 129:
  red = ((((red)<<(info->var.red.length))+0x7FFF-(red))>>16);
  green = ((((green)<<(info->var.green.length))+0x7FFF-(green))>>16);
  blue = ((((blue)<<(info->var.blue.length))+0x7FFF-(blue))>>16);
  transp = ((((transp)<<(info->var.transp.length))+0x7FFF-(transp))>>16);
  break;
 case 130:
  red = ((((red)<<(8))+0x7FFF-(red))>>16);
  green = ((((green)<<(8))+0x7FFF-(green))>>16);
  blue = ((((blue)<<(8))+0x7FFF-(blue))>>16);

  transp = ((((transp)<<(8))+0x7FFF-(transp))>>16);
  break;
 }


 if (info->fix.visual == 128) {
  u32 v;

  if (regno >= 16)
   return 1;

  v = (red << info->var.red.offset) |
      (green << info->var.green.offset) |
      (blue << info->var.blue.offset) |
      (transp << info->var.transp.offset);
  switch (info->var.bits_per_pixel) {
  case 8:
   break;
  case 16:
   ((u32 *) (info->pseudo_palette))[regno] = v;
   break;
  case 24:
  case 32:
   ((u32 *) (info->pseudo_palette))[regno] = v;
   break;
  }
  return 0;
 }
 return 0;
}
