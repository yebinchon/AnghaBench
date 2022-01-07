
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcm47xx_wdt_pause () ;

__attribute__((used)) static void bcm47xx_wdt_stop(void)
{
 bcm47xx_wdt_pause();
}
