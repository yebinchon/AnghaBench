
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_SOFTIRQ ;
 int hrtimer_run_queues () ;
 int raise_softirq (int ) ;

void run_local_timers(void)
{
 hrtimer_run_queues();
 raise_softirq(TIMER_SOFTIRQ);
}
