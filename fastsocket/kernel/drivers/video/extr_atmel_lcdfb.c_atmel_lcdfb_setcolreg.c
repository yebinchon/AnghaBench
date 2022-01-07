
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_4__ {int blue; int green; int red; scalar_t__ grayscale; } ;
struct TYPE_3__ {int visual; } ;
struct fb_info {unsigned int* pseudo_palette; TYPE_2__ var; TYPE_1__ fix; struct atmel_lcdfb_info* par; } ;
struct atmel_lcdfb_info {int dummy; } ;


 int ATMEL_LCDC_LUT (unsigned int) ;



 unsigned int chan_to_field (unsigned int,int *) ;
 int lcdc_writel (struct atmel_lcdfb_info*,int ,unsigned int) ;

__attribute__((used)) static int atmel_lcdfb_setcolreg(unsigned int regno, unsigned int red,
        unsigned int green, unsigned int blue,
        unsigned int transp, struct fb_info *info)
{
 struct atmel_lcdfb_info *sinfo = info->par;
 unsigned int val;
 u32 *pal;
 int ret = 1;

 if (info->var.grayscale)
  red = green = blue = (19595 * red + 38470 * green
          + 7471 * blue) >> 16;

 switch (info->fix.visual) {
 case 128:
  if (regno < 16) {
   pal = info->pseudo_palette;

   val = chan_to_field(red, &info->var.red);
   val |= chan_to_field(green, &info->var.green);
   val |= chan_to_field(blue, &info->var.blue);

   pal[regno] = val;
   ret = 0;
  }
  break;

 case 129:
  if (regno < 256) {
   val = ((red >> 11) & 0x001f);
   val |= ((green >> 6) & 0x03e0);
   val |= ((blue >> 1) & 0x7c00);






   lcdc_writel(sinfo, ATMEL_LCDC_LUT(regno), val);
   ret = 0;
  }
  break;

 case 130:
  if (regno < 2) {
   val = (regno == 0) ? 0x00 : 0x1F;
   lcdc_writel(sinfo, ATMEL_LCDC_LUT(regno), val);
   ret = 0;
  }
  break;

 }

 return ret;
}
