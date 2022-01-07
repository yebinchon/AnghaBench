
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w100fb_par {TYPE_1__* mach; } ;
struct w100_mode {unsigned int xres; unsigned int yres; } ;
struct TYPE_2__ {unsigned int num_modes; struct w100_mode* modelist; } ;



__attribute__((used)) static struct w100_mode *w100fb_get_mode(struct w100fb_par *par, unsigned int *x, unsigned int *y, int saveval)
{
 struct w100_mode *mode = ((void*)0);
 struct w100_mode *modelist = par->mach->modelist;
 unsigned int best_x = 0xffffffff, best_y = 0xffffffff;
 unsigned int i;

 for (i = 0 ; i < par->mach->num_modes ; i++) {
  if (modelist[i].xres >= *x && modelist[i].yres >= *y &&
    modelist[i].xres < best_x && modelist[i].yres < best_y) {
   best_x = modelist[i].xres;
   best_y = modelist[i].yres;
   mode = &modelist[i];
  } else if(modelist[i].xres >= *y && modelist[i].yres >= *x &&
          modelist[i].xres < best_y && modelist[i].yres < best_x) {
   best_x = modelist[i].yres;
   best_y = modelist[i].xres;
   mode = &modelist[i];
  }
 }

 if (mode && saveval) {
  *x = best_x;
  *y = best_y;
 }

 return mode;
}
