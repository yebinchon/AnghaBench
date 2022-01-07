
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef unsigned int u32 ;
struct TYPE_5__ {int blue; int green; int red; scalar_t__ grayscale; } ;
struct TYPE_4__ {int visual; } ;
struct TYPE_6__ {unsigned int* pseudo_palette; TYPE_2__ var; TYPE_1__ fix; } ;
struct pxafb_info {TYPE_3__ fb; scalar_t__ cmap_inverse; } ;
struct fb_info {int dummy; } ;





 unsigned int chan_to_field (int,int *) ;
 int pxafb_setpalettereg (int,int,int,int,int,struct fb_info*) ;

__attribute__((used)) static int
pxafb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
     u_int trans, struct fb_info *info)
{
 struct pxafb_info *fbi = (struct pxafb_info *)info;
 unsigned int val;
 int ret = 1;







 if (fbi->cmap_inverse) {
  red = 0xffff - red;
  green = 0xffff - green;
  blue = 0xffff - blue;
 }





 if (fbi->fb.var.grayscale)
  red = green = blue = (19595 * red + 38470 * green +
     7471 * blue) >> 16;

 switch (fbi->fb.fix.visual) {
 case 128:




  if (regno < 16) {
   u32 *pal = fbi->fb.pseudo_palette;

   val = chan_to_field(red, &fbi->fb.var.red);
   val |= chan_to_field(green, &fbi->fb.var.green);
   val |= chan_to_field(blue, &fbi->fb.var.blue);

   pal[regno] = val;
   ret = 0;
  }
  break;

 case 129:
 case 130:
  ret = pxafb_setpalettereg(regno, red, green, blue, trans, info);
  break;
 }

 return ret;
}
