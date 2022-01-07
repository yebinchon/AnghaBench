
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clocksource {int list; } ;


 int clocksource_dequeue_watchdog (struct clocksource*) ;
 int clocksource_mutex ;
 int clocksource_select () ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void clocksource_unregister(struct clocksource *cs)
{
 mutex_lock(&clocksource_mutex);
 clocksource_dequeue_watchdog(cs);
 list_del(&cs->list);
 clocksource_select();
 mutex_unlock(&clocksource_mutex);
}
