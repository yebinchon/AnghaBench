
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {scalar_t__ maxadj; scalar_t__ mult; int name; int max_idle_ns; } ;


 int WARN_ONCE (int,char*,int ) ;
 int clocksource_enqueue (struct clocksource*) ;
 int clocksource_enqueue_watchdog (struct clocksource*) ;
 scalar_t__ clocksource_max_adjustment (struct clocksource*) ;
 int clocksource_max_deferment (struct clocksource*) ;
 int clocksource_mutex ;
 int clocksource_select () ;
 int has_kvm_clock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strcmp (int ,char*) ;

int clocksource_register(struct clocksource *cs)
{

 cs->maxadj = clocksource_max_adjustment(cs);
 WARN_ONCE(cs->mult + cs->maxadj < cs->mult,
  "Clocksource %s might overflow on 11%% adjustment\n",
  cs->name);


 cs->max_idle_ns = clocksource_max_deferment(cs);

 mutex_lock(&clocksource_mutex);
 clocksource_enqueue(cs);
 clocksource_select();
 clocksource_enqueue_watchdog(cs);
 mutex_unlock(&clocksource_mutex);
 if (!strcmp(cs->name, "kvm-clock"))
  has_kvm_clock = 1;
 return 0;
}
