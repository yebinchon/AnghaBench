
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WDT_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int next_heartbeat ;
 scalar_t__ time_before (scalar_t__,int ) ;
 int timer ;
 int wdt_ping () ;

__attribute__((used)) static void ep93xx_timer_ping(unsigned long data)
{
 if (time_before(jiffies, next_heartbeat))
  wdt_ping();


 mod_timer(&timer, jiffies + WDT_INTERVAL);
}
