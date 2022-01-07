
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct fb_info {scalar_t__ pseudo_palette; } ;



__attribute__((used)) static int ffb_setcolreg(unsigned regno,
    unsigned red, unsigned green, unsigned blue,
    unsigned transp, struct fb_info *info)
{
 u32 value;

 if (regno >= 16)
  return 1;

 red >>= 8;
 green >>= 8;
 blue >>= 8;

 value = (blue << 16) | (green << 8) | red;
 ((u32 *)info->pseudo_palette)[regno] = value;

 return 0;
}
