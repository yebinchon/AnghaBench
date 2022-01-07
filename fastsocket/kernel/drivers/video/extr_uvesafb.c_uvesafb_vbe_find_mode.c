
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uvesafb_par {int vbe_modes_cnt; TYPE_1__* vbe_modes; } ;
struct TYPE_2__ {int x_res; int y_res; int depth; } ;


 unsigned char UVESAFB_EXACT_DEPTH ;
 unsigned char UVESAFB_EXACT_RES ;
 int abs (int) ;

__attribute__((used)) static int uvesafb_vbe_find_mode(struct uvesafb_par *par,
  int xres, int yres, int depth, unsigned char flags)
{
 int i, match = -1, h = 0, d = 0x7fffffff;

 for (i = 0; i < par->vbe_modes_cnt; i++) {
  h = abs(par->vbe_modes[i].x_res - xres) +
      abs(par->vbe_modes[i].y_res - yres) +
      abs(depth - par->vbe_modes[i].depth);





  if (h == 0)
   return i;

  if (h < d || (h == d && par->vbe_modes[i].depth > depth)) {
   d = h;
   match = i;
  }
 }
 i = 1;

 if (flags & UVESAFB_EXACT_DEPTH &&
   par->vbe_modes[match].depth != depth)
  i = 0;

 if (flags & UVESAFB_EXACT_RES && d > 24)
  i = 0;

 if (i != 0)
  return match;
 else
  return -1;
}
