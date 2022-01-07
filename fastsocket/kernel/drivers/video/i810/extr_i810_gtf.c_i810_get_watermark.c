
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct wm_info {size_t freq; size_t wm; } ;
struct i810fb_par {int mem_freq; } ;
struct fb_var_screeninfo {int bits_per_pixel; int pixclock; } ;


 size_t ARRAY_SIZE (struct wm_info*) ;
 struct wm_info* i810_wm_16_100 ;
 struct wm_info* i810_wm_16_133 ;
 struct wm_info* i810_wm_24_100 ;
 struct wm_info* i810_wm_24_133 ;
 struct wm_info* i810_wm_8_100 ;
 struct wm_info* i810_wm_8_133 ;

u32 i810_get_watermark(const struct fb_var_screeninfo *var,
         struct i810fb_par *par)
{
 struct wm_info *wmark = ((void*)0);
 u32 i, size = 0, pixclock, wm_best = 0, min, diff;

 if (par->mem_freq == 100) {
  switch (var->bits_per_pixel) {
  case 8:
   wmark = i810_wm_8_100;
   size = ARRAY_SIZE(i810_wm_8_100);
   break;
  case 16:
   wmark = i810_wm_16_100;
   size = ARRAY_SIZE(i810_wm_16_100);
   break;
  case 24:
  case 32:
   wmark = i810_wm_24_100;
   size = ARRAY_SIZE(i810_wm_24_100);
  }
 } else {
  switch(var->bits_per_pixel) {
  case 8:
   wmark = i810_wm_8_133;
   size = ARRAY_SIZE(i810_wm_8_133);
   break;
  case 16:
   wmark = i810_wm_16_133;
   size = ARRAY_SIZE(i810_wm_16_133);
   break;
  case 24:
  case 32:
   wmark = i810_wm_24_133;
   size = ARRAY_SIZE(i810_wm_24_133);
  }
 }

 pixclock = 1000000/var->pixclock;
 min = ~0;
 for (i = 0; i < size; i++) {
  if (pixclock <= wmark[i].freq)
   diff = wmark[i].freq - pixclock;
  else
   diff = pixclock - wmark[i].freq;
  if (diff < min) {
   wm_best = wmark[i].wm;
   min = diff;
  }
 }
 return wm_best;
}
