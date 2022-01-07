
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_par_control {int dummy; } ;
struct TYPE_2__ {int * regs; int * clock_params; } ;


 int DIRTY (int ) ;
 int cmode ;
 TYPE_1__ regvals ;
 int vxres ;
 int vyres ;
 int xres ;
 int yres ;

__attribute__((used)) static inline int PAR_EQUAL(struct fb_par_control *x, struct fb_par_control *y)
{
 int i, results;

 results = 1;
 for (i = 0; i < 3; i++)
  results &= !DIRTY(regvals.clock_params[i]);
 if (!results)
  return 0;
 for (i = 0; i < 16; i++)
  results &= !DIRTY(regvals.regs[i]);
 if (!results)
  return 0;
 return (!DIRTY(cmode) && !DIRTY(xres) && !DIRTY(yres)
  && !DIRTY(vxres) && !DIRTY(vyres));
}
