
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ssb_bcm47xx ;
 int ssb_watchdog_timer_set (int *,int) ;

__attribute__((used)) static inline void bcm47xx_wdt_hw_start(void)
{

 ssb_watchdog_timer_set(&ssb_bcm47xx, 0xfffffff);
}
