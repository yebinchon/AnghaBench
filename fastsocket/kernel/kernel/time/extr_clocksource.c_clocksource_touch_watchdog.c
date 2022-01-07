
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clocksource_resume_watchdog () ;

void clocksource_touch_watchdog(void)
{
 clocksource_resume_watchdog();
}
