
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fb_info {int dummy; } ;


 int* colreg ;

__attribute__((used)) static int rgbfb_setcolreg(u_int regno, u_int red, u_int green, u_int blue,
      u_int transp, struct fb_info *info)
{
 if (regno > 15)
  return 1;

 colreg[regno] = ((red & 0xff00) << 8) | (green & 0xff00) |
     ((blue & 0xff00) >> 8);
 return 0;
}
