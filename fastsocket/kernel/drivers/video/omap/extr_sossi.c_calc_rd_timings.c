
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extif_timings {int clk_div; int* tim; int access_time; int re_cycle_time; int re_off_time; int re_on_time; } ;


 int ps_to_sossi_ticks (int ,int) ;

__attribute__((used)) static int calc_rd_timings(struct extif_timings *t)
{
 u32 tw0, tw1;
 int reon, reoff, recyc, actim;
 int div = t->clk_div;





 reon = ps_to_sossi_ticks(t->re_on_time, div);

 if (reon > 1)
  return -1;

 reoff = ps_to_sossi_ticks(t->re_off_time, div);

 if (reoff <= reon)
  reoff = reon + 1;

 tw0 = reoff - reon;
 if (tw0 > 0x10)
  return -1;

 recyc = ps_to_sossi_ticks(t->re_cycle_time, div);
 if (recyc <= reoff)
  recyc = reoff + 1;

 tw1 = recyc - tw0;

 if (tw1 < 3)
  tw1 = 3;
 if (tw1 > 0x40)
  return -1;

 actim = ps_to_sossi_ticks(t->access_time, div);
 if (actim < reoff)
  actim++;




 if (actim - reoff > 1)
  return -1;

 t->tim[0] = tw0 - 1;
 t->tim[1] = tw1 - 1;

 return 0;
}
