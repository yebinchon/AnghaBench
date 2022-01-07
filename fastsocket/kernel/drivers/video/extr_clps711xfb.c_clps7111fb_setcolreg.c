
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; } ;


 int PALLSW ;
 int PALMSW ;
 unsigned int clps_readl (int) ;
 int clps_writel (unsigned int,int) ;
 scalar_t__ machine_is_edb7211 () ;

__attribute__((used)) static int
clps7111fb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
       u_int transp, struct fb_info *info)
{
 unsigned int level, mask, shift, pal;

 if (regno >= (1 << info->var.bits_per_pixel))
  return 1;


 level = (red * 77 + green * 151 + blue * 28) >> 20;
 if (machine_is_edb7211()) {
  level = 15 - level;
 }

 shift = 4 * (regno & 7);
 level <<= shift;
 mask = 15 << shift;
 level &= mask;

 regno = regno < 8 ? PALLSW : PALMSW;

 pal = clps_readl(regno);
 pal = (pal & ~mask) | level;
 clps_writel(pal, regno);

 return 0;
}
