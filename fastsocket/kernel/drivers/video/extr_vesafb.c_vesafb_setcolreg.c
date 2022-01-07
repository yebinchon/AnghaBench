
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_9__ {unsigned int offset; } ;
struct TYPE_8__ {unsigned int offset; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_10__ {int bits_per_pixel; TYPE_4__ blue; TYPE_3__ green; TYPE_2__ red; } ;
struct TYPE_6__ {unsigned int len; } ;
struct fb_info {TYPE_5__ var; scalar_t__ pseudo_palette; TYPE_1__ cmap; } ;


 int vesa_setpalette (unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int vesafb_setcolreg(unsigned regno, unsigned red, unsigned green,
       unsigned blue, unsigned transp,
       struct fb_info *info)
{
 int err = 0;
 if (regno >= info->cmap.len)
  return 1;

 if (info->var.bits_per_pixel == 8)
  err = vesa_setpalette(regno,red,green,blue);
 else if (regno < 16) {
  switch (info->var.bits_per_pixel) {
  case 16:
   if (info->var.red.offset == 10) {

    ((u32*) (info->pseudo_palette))[regno] =
     ((red & 0xf800) >> 1) |
     ((green & 0xf800) >> 6) |
     ((blue & 0xf800) >> 11);
   } else {

    ((u32*) (info->pseudo_palette))[regno] =
     ((red & 0xf800) ) |
     ((green & 0xfc00) >> 5) |
     ((blue & 0xf800) >> 11);
   }
   break;
  case 24:
  case 32:
   red >>= 8;
   green >>= 8;
   blue >>= 8;
   ((u32 *)(info->pseudo_palette))[regno] =
    (red << info->var.red.offset) |
    (green << info->var.green.offset) |
    (blue << info->var.blue.offset);
   break;
  }
 }

 return err;
}
