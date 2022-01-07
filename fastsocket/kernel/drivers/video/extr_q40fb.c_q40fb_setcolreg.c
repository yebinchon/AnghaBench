
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct fb_info {scalar_t__ pseudo_palette; } ;



__attribute__((used)) static int q40fb_setcolreg(unsigned regno, unsigned red, unsigned green,
      unsigned blue, unsigned transp,
      struct fb_info *info)
{






    if (regno > 255)
     return 1;
    red>>=11;
    green>>=11;
    blue>>=10;

    if (regno < 16) {
 ((u32 *)info->pseudo_palette)[regno] = ((red & 31) <<6) |
            ((green & 31) << 11) |
            (blue & 63);
    }
    return 0;
}
