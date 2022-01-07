
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extif_timings {int clk_div; int* tim; int converted; int cs_pulse_width; int re_cycle_time; int we_cycle_time; int access_time; int cs_off_time; int cs_on_time; int re_off_time; int re_on_time; int we_off_time; int we_on_time; } ;


 int max (int,int) ;
 int ps_to_rfbi_ticks (int ,int) ;

__attribute__((used)) static int rfbi_convert_timings(struct extif_timings *t)
{
 u32 l;
 int reon, reoff, weon, weoff, cson, csoff, cs_pulse;
 int actim, recyc, wecyc;
 int div = t->clk_div;

 if (div <= 0 || div > 2)
  return -1;





 weon = ps_to_rfbi_ticks(t->we_on_time, div);
 weoff = ps_to_rfbi_ticks(t->we_off_time, div);
 if (weoff <= weon)
  weoff = weon + 1;
 if (weon > 0x0f)
  return -1;
 if (weoff > 0x3f)
  return -1;

 reon = ps_to_rfbi_ticks(t->re_on_time, div);
 reoff = ps_to_rfbi_ticks(t->re_off_time, div);
 if (reoff <= reon)
  reoff = reon + 1;
 if (reon > 0x0f)
  return -1;
 if (reoff > 0x3f)
  return -1;

 cson = ps_to_rfbi_ticks(t->cs_on_time, div);
 csoff = ps_to_rfbi_ticks(t->cs_off_time, div);
 if (csoff <= cson)
  csoff = cson + 1;
 if (csoff < max(weoff, reoff))
  csoff = max(weoff, reoff);
 if (cson > 0x0f)
  return -1;
 if (csoff > 0x3f)
  return -1;

 l = cson;
 l |= csoff << 4;
 l |= weon << 10;
 l |= weoff << 14;
 l |= reon << 20;
 l |= reoff << 24;

 t->tim[0] = l;

 actim = ps_to_rfbi_ticks(t->access_time, div);
 if (actim <= reon)
  actim = reon + 1;
 if (actim > 0x3f)
  return -1;

 wecyc = ps_to_rfbi_ticks(t->we_cycle_time, div);
 if (wecyc < weoff)
  wecyc = weoff;
 if (wecyc > 0x3f)
  return -1;

 recyc = ps_to_rfbi_ticks(t->re_cycle_time, div);
 if (recyc < reoff)
  recyc = reoff;
 if (recyc > 0x3f)
  return -1;

 cs_pulse = ps_to_rfbi_ticks(t->cs_pulse_width, div);
 if (cs_pulse > 0x3f)
  return -1;

 l = wecyc;
 l |= recyc << 6;
 l |= cs_pulse << 12;
 l |= actim << 22;

 t->tim[1] = l;

 t->tim[2] = div - 1;

 t->converted = 1;

 return 0;
}
