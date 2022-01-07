
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ hrtimer_hres_active () ;
 int hrtimer_is_hres_enabled () ;
 int hrtimer_switch_to_hres () ;
 scalar_t__ tick_check_oneshot_change (int) ;

void hrtimer_run_pending(void)
{
 if (hrtimer_hres_active())
  return;
 if (tick_check_oneshot_change(!hrtimer_is_hres_enabled()))
  hrtimer_switch_to_hres();
}
