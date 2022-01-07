
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcm47xx_timer_tick (int ) ;
 int bcm47xx_wdt_pet () ;

__attribute__((used)) static void bcm47xx_wdt_start(void)
{
 bcm47xx_wdt_pet();
 bcm47xx_timer_tick(0);
}
