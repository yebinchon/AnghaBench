
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int cmode; } ;
struct fb_info_control {int* pseudo_palette; TYPE_2__ par; TYPE_1__* cmap_regs; } ;
struct fb_info {int dummy; } ;
typedef int __u8 ;
struct TYPE_3__ {int lut; int addr; } ;




 int out_8 (int *,int) ;

__attribute__((used)) static int controlfb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
        u_int transp, struct fb_info *info)
{
 struct fb_info_control *p = (struct fb_info_control *) info;
 __u8 r, g, b;

 if (regno > 255)
  return 1;

 r = red >> 8;
 g = green >> 8;
 b = blue >> 8;

 out_8(&p->cmap_regs->addr, regno);
 out_8(&p->cmap_regs->lut, r);
 out_8(&p->cmap_regs->lut, g);
 out_8(&p->cmap_regs->lut, b);

 if (regno < 16) {
  int i;
  switch (p->par.cmode) {
  case 129:
   p->pseudo_palette[regno] =
       (regno << 10) | (regno << 5) | regno;
   break;
  case 128:
   i = (regno << 8) | regno;
   p->pseudo_palette[regno] = (i << 16) | i;
   break;
  }
 }

 return 0;
}
