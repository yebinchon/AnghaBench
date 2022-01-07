
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct geodefb_par {TYPE_3__* dc_ops; } ;
struct TYPE_5__ {int blue; int green; int red; scalar_t__ grayscale; } ;
struct TYPE_4__ {scalar_t__ visual; } ;
struct fb_info {TYPE_2__ var; int * pseudo_palette; TYPE_1__ fix; struct geodefb_par* par; } ;
struct TYPE_6__ {int (* set_palette_reg ) (struct fb_info*,unsigned int,unsigned int,unsigned int,unsigned int) ;} ;


 int EINVAL ;
 scalar_t__ FB_VISUAL_TRUECOLOR ;
 int chan_to_field (unsigned int,int *) ;
 int stub1 (struct fb_info*,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int gx1fb_setcolreg(unsigned regno, unsigned red, unsigned green,
      unsigned blue, unsigned transp,
      struct fb_info *info)
{
 struct geodefb_par *par = info->par;

 if (info->var.grayscale) {

  red = green = blue = (red * 77 + green * 151 + blue * 28) >> 8;
 }


 if (info->fix.visual == FB_VISUAL_TRUECOLOR) {
  u32 *pal = info->pseudo_palette;
  u32 v;

  if (regno >= 16)
   return -EINVAL;

  v = chan_to_field(red, &info->var.red);
  v |= chan_to_field(green, &info->var.green);
  v |= chan_to_field(blue, &info->var.blue);

  pal[regno] = v;
 } else {
  if (regno >= 256)
   return -EINVAL;

  par->dc_ops->set_palette_reg(info, regno, red, green, blue);
 }

 return 0;
}
