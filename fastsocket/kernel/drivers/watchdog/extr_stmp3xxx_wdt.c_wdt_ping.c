
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WDOG_COUNTER_RATE ;
 int heartbeat ;
 int wdt_enable (int) ;

__attribute__((used)) static void wdt_ping(void)
{
 wdt_enable(heartbeat * WDOG_COUNTER_RATE);
}
