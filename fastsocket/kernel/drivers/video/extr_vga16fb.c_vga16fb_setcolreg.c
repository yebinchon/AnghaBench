
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vga16fb_par {scalar_t__ isVGA; } ;
struct TYPE_2__ {int grayscale; } ;
struct fb_info {TYPE_1__ var; struct vga16fb_par* par; } ;


 int ega16_setpalette (unsigned int,unsigned int,unsigned int,unsigned int) ;
 int vga16_setpalette (unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int vga16fb_setcolreg(unsigned regno, unsigned red, unsigned green,
        unsigned blue, unsigned transp,
        struct fb_info *info)
{
 struct vga16fb_par *par = info->par;
 int gray;
 if (regno >= 256)
  return 1;

 gray = info->var.grayscale;

 if (gray) {

  red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
 }
 if (par->isVGA)
  vga16_setpalette(regno,red,green,blue);
 else
  ega16_setpalette(regno,red,green,blue);
 return 0;
}
