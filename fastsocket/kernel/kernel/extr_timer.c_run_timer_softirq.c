
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tvec_base {int timer_jiffies; } ;
struct softirq_action {int dummy; } ;


 struct tvec_base* __get_cpu_var (int ) ;
 int __run_timers (struct tvec_base*) ;
 int hrtimer_run_pending () ;
 int jiffies ;
 scalar_t__ time_after_eq (int ,int ) ;
 int tvec_bases ;

__attribute__((used)) static void run_timer_softirq(struct softirq_action *h)
{
 struct tvec_base *base = __get_cpu_var(tvec_bases);

 hrtimer_run_pending();

 if (time_after_eq(jiffies, base->timer_jiffies))
  __run_timers(base);
}
