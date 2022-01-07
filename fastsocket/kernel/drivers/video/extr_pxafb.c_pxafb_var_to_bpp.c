
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int bits_per_pixel; } ;


 int EINVAL ;
 int var_to_depth (struct fb_var_screeninfo*) ;

__attribute__((used)) static int pxafb_var_to_bpp(struct fb_var_screeninfo *var)
{
 int bpp = -EINVAL;

 switch (var->bits_per_pixel) {
 case 1: bpp = 0; break;
 case 2: bpp = 1; break;
 case 4: bpp = 2; break;
 case 8: bpp = 3; break;
 case 16: bpp = 4; break;
 case 24:
  switch (var_to_depth(var)) {
  case 18: bpp = 6; break;
  case 19: bpp = 8; break;
  case 24: bpp = 9; break;
  }
  break;
 case 32:
  switch (var_to_depth(var)) {
  case 18: bpp = 5; break;
  case 19: bpp = 7; break;
  case 25: bpp = 10; break;
  }
  break;
 }
 return bpp;
}
