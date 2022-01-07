
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mode_registers {int bpp24_133; int bpp16_133; int bpp8_133; int bpp24_100; int bpp16_100; int bpp8_100; } ;
struct i810fb_par {int mem_freq; struct mode_registers regs; } ;
struct fb_var_screeninfo {int bits_per_pixel; } ;



u32 i810_get_watermark(struct fb_var_screeninfo *var,
         struct i810fb_par *par)
{
 struct mode_registers *params = &par->regs;
 u32 wmark = 0;

 if (par->mem_freq == 100) {
  switch (var->bits_per_pixel) {
  case 8:
   wmark = params->bpp8_100;
   break;
  case 16:
   wmark = params->bpp16_100;
   break;
  case 24:
  case 32:
   wmark = params->bpp24_100;
  }
 } else {
  switch (var->bits_per_pixel) {
  case 8:
   wmark = params->bpp8_133;
   break;
  case 16:
   wmark = params->bpp16_133;
   break;
  case 24:
  case 32:
   wmark = params->bpp24_133;
  }
 }
 return wmark;
}
