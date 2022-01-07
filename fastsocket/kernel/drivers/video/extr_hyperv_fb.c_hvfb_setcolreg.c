
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int transp; int blue; int green; int red; } ;
struct fb_info {int* pseudo_palette; TYPE_1__ var; } ;


 int EINVAL ;
 int chan_to_field (unsigned int,int *) ;

__attribute__((used)) static int hvfb_setcolreg(unsigned regno, unsigned red, unsigned green,
     unsigned blue, unsigned transp, struct fb_info *info)
{
 u32 *pal = info->pseudo_palette;

 if (regno > 15)
  return -EINVAL;

 pal[regno] = chan_to_field(red, &info->var.red)
  | chan_to_field(green, &info->var.green)
  | chan_to_field(blue, &info->var.blue)
  | chan_to_field(transp, &info->var.transp);

 return 0;
}
