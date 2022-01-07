
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 scalar_t__ WDT_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ next_heartbeat ;
 int timeout ;
 int timer ;
 int wdt_enable () ;

__attribute__((used)) static void wdt_startup(void)
{
 next_heartbeat = jiffies + (timeout * HZ);

 wdt_enable();
 mod_timer(&timer, jiffies + WDT_INTERVAL);
}
