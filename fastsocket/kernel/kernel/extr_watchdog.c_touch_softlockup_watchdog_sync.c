
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __raw_get_cpu_var ;



void touch_softlockup_watchdog_sync(void)
{
 __raw_get_cpu_var(softlockup_touch_sync) = 1;
 __raw_get_cpu_var(watchdog_touch_ts) = 0;
}
