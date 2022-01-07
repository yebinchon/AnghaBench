
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct kyrofb_info {int* palette; } ;
struct TYPE_2__ {int bits_per_pixel; } ;
struct fb_info {TYPE_1__ var; struct kyrofb_info* par; } ;



__attribute__((used)) static int kyrofb_setcolreg(u_int regno, u_int red, u_int green,
       u_int blue, u_int transp, struct fb_info *info)
{
 struct kyrofb_info *par = info->par;

 if (regno > 255)
  return 1;

 if (regno < 16) {
  switch (info->var.bits_per_pixel) {
  case 16:
   par->palette[regno] =
        (red & 0xf800) |
       ((green & 0xfc00) >> 5) |
       ((blue & 0xf800) >> 11);
   break;
  case 32:
   red >>= 8; green >>= 8; blue >>= 8; transp >>= 8;
   par->palette[regno] =
       (transp << 24) | (red << 16) | (green << 8) | blue;
   break;
  }
 }

 return 0;
}
