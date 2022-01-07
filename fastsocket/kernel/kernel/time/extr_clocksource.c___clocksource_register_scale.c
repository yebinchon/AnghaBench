
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clocksource {int mult; int maxadj; int max_idle_ns; int shift; } ;


 int MAX_UPDATE_LENGTH ;
 int NSEC_PER_SEC ;
 int clocks_calc_mult_shift (int*,int *,int,int,int) ;
 int clocksource_enqueue (struct clocksource*) ;
 int clocksource_enqueue_watchdog (struct clocksource*) ;
 void* clocksource_max_adjustment (struct clocksource*) ;
 int clocksource_max_deferment (struct clocksource*) ;
 int clocksource_mutex ;
 int clocksource_select () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int __clocksource_register_scale(struct clocksource *cs, u32 scale, u32 freq)
{







 clocks_calc_mult_shift(&cs->mult, &cs->shift, freq,
          NSEC_PER_SEC/scale,
          MAX_UPDATE_LENGTH*scale);






 cs->maxadj = clocksource_max_adjustment(cs);
 while ((cs->mult + cs->maxadj < cs->mult)
  || (cs->mult - cs->maxadj > cs->mult)) {
  cs->mult >>= 1;
  cs->shift--;
  cs->maxadj = clocksource_max_adjustment(cs);
 }

 cs->max_idle_ns = clocksource_max_deferment(cs);

 mutex_lock(&clocksource_mutex);
 clocksource_enqueue(cs);
 clocksource_enqueue_watchdog(cs);
 clocksource_select();
 mutex_unlock(&clocksource_mutex);
 return 0;
}
