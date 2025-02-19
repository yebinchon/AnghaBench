
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


 int macfb_setpalette (unsigned int,unsigned int,unsigned int,unsigned int,struct fb_info*) ;

__attribute__((used)) static int macfb_setcolreg(unsigned regno, unsigned red, unsigned green,
      unsigned blue, unsigned transp,
      struct fb_info *fb_info)
{







 if (regno >= fb_info->cmap.len)
  return 1;

 if (fb_info->var.bits_per_pixel <= 8) {
  switch (fb_info->var.bits_per_pixel) {
  case 1:

   break;
  case 2:
  case 4:
  case 8:
   if (macfb_setpalette)
    macfb_setpalette(regno, red, green, blue,
       fb_info);
   else
    return 1;
   break;
  }
 } else if (regno < 16) {
  switch (fb_info->var.bits_per_pixel) {
  case 16:
   if (fb_info->var.red.offset == 10) {

    ((u32*) (fb_info->pseudo_palette))[regno] =
     ((red & 0xf800) >> 1) |
     ((green & 0xf800) >> 6) |
     ((blue & 0xf800) >> 11) |
     ((transp != 0) << 15);
   } else {

    ((u32*) (fb_info->pseudo_palette))[regno] =
     ((red & 0xf800) ) |
     ((green & 0xfc00) >> 5) |
     ((blue & 0xf800) >> 11);
   }
   break;


  case 24:
   red >>= 8;
   green >>= 8;
   blue >>= 8;
   ((u32 *)(fb_info->pseudo_palette))[regno] =
    (red << fb_info->var.red.offset) |
    (green << fb_info->var.green.offset) |
    (blue << fb_info->var.blue.offset);
   break;
  case 32:
   red >>= 8;
   green >>= 8;
   blue >>= 8;
   ((u32 *)(fb_info->pseudo_palette))[regno] =
    (red << fb_info->var.red.offset) |
    (green << fb_info->var.green.offset) |
    (blue << fb_info->var.blue.offset);
   break;
  }
 }

 return 0;
}
