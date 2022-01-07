
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
struct TYPE_11__ {unsigned int offset; int length; } ;
struct TYPE_10__ {unsigned int offset; int length; } ;
struct TYPE_9__ {unsigned int offset; int length; } ;
struct TYPE_8__ {int length; } ;
struct TYPE_12__ {int bits_per_pixel; TYPE_5__ blue; TYPE_4__ green; TYPE_3__ red; TYPE_2__ transp; } ;
struct TYPE_7__ {unsigned int len; } ;
struct fb_info {scalar_t__ pseudo_palette; TYPE_6__ var; TYPE_1__ cmap; } ;


 unsigned int CNVT_TOHW (unsigned int,int ) ;

__attribute__((used)) static int xenfb_setcolreg(unsigned regno, unsigned red, unsigned green,
      unsigned blue, unsigned transp,
      struct fb_info *info)
{
 u32 v;

 if (regno > info->cmap.len)
  return 1;


 red = ((((red)<<(info->var.red.length))+0x7FFF-(red))>>16);
 green = ((((green)<<(info->var.green.length))+0x7FFF-(green))>>16);
 blue = ((((blue)<<(info->var.blue.length))+0x7FFF-(blue))>>16);
 transp = ((((transp)<<(info->var.transp.length))+0x7FFF-(transp))>>16);


 v = (red << info->var.red.offset) |
     (green << info->var.green.offset) |
     (blue << info->var.blue.offset);

 switch (info->var.bits_per_pixel) {
 case 16:
 case 24:
 case 32:
  ((u32 *)info->pseudo_palette)[regno] = v;
  break;
 }

 return 0;
}
