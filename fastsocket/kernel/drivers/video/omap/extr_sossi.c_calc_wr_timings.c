
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extif_timings {int clk_div; int* tim; int we_cycle_time; int we_off_time; int we_on_time; } ;


 int ps_to_sossi_ticks (int ,int) ;

__attribute__((used)) static int calc_wr_timings(struct extif_timings *t)
{
 u32 tw0, tw1;
 int weon, weoff, wecyc;
 int div = t->clk_div;





 weon = ps_to_sossi_ticks(t->we_on_time, div);

 if (weon > 1)
  return -1;

 weoff = ps_to_sossi_ticks(t->we_off_time, div);
 if (weoff <= weon)
  weoff = weon + 1;
 tw0 = weoff - weon;
 if (tw0 > 0x10)
  return -1;

 wecyc = ps_to_sossi_ticks(t->we_cycle_time, div);
 if (wecyc <= weoff)
  wecyc = weoff + 1;

 tw1 = wecyc - tw0;

 if (tw1 < 3)
  tw1 = 3;
 if (tw1 > 0x40)
  return -1;

 t->tim[2] = tw0 - 1;
 t->tim[3] = tw1 - 1;

 return 0;
}
