
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef unsigned int u32 ;
struct imxfb_info {scalar_t__ cmap_inverse; } ;
struct TYPE_4__ {int blue; int green; int red; scalar_t__ grayscale; } ;
struct TYPE_3__ {int visual; } ;
struct fb_info {unsigned int* pseudo_palette; TYPE_2__ var; TYPE_1__ fix; struct imxfb_info* par; } ;





 unsigned int chan_to_field (int,int *) ;
 int imxfb_setpalettereg (int,int,int,int,int,struct fb_info*) ;

__attribute__((used)) static int imxfb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
     u_int trans, struct fb_info *info)
{
 struct imxfb_info *fbi = info->par;
 unsigned int val;
 int ret = 1;







 if (fbi->cmap_inverse) {
  red = 0xffff - red;
  green = 0xffff - green;
  blue = 0xffff - blue;
 }





 if (info->var.grayscale)
  red = green = blue = (19595 * red + 38470 * green +
     7471 * blue) >> 16;

 switch (info->fix.visual) {
 case 128:




  if (regno < 16) {
   u32 *pal = info->pseudo_palette;

   val = chan_to_field(red, &info->var.red);
   val |= chan_to_field(green, &info->var.green);
   val |= chan_to_field(blue, &info->var.blue);

   pal[regno] = val;
   ret = 0;
  }
  break;

 case 129:
 case 130:
  ret = imxfb_setpalettereg(regno, red, green, blue, trans, info);
  break;
 }

 return ret;
}
