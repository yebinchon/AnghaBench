
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcm47xx_wdt_hw_stop () ;
 int del_timer_sync (int *) ;
 int wdt_timer ;

__attribute__((used)) static void bcm47xx_wdt_pause(void)
{
 del_timer_sync(&wdt_timer);
 bcm47xx_wdt_hw_stop();
}
