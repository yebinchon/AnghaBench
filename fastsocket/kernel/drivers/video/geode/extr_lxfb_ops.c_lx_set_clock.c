
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pixclock; } ;
struct fb_info {TYPE_1__ var; } ;
struct TYPE_5__ {int pllval; scalar_t__ freq; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 unsigned int abs (scalar_t__) ;
 int lx_set_dotpll (int) ;
 TYPE_2__* pll_table ;

__attribute__((used)) static void lx_set_clock(struct fb_info *info)
{
 unsigned int diff, min, best = 0;
 unsigned int freq, i;

 freq = (unsigned int) (1000000000 / info->var.pixclock);

 min = abs(pll_table[0].freq - freq);

 for (i = 0; i < ARRAY_SIZE(pll_table); i++) {
  diff = abs(pll_table[i].freq - freq);
  if (diff < min) {
   min = diff;
   best = i;
  }
 }

 lx_set_dotpll(pll_table[best].pllval & 0x00017FFF);
}
