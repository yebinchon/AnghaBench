
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* IXP4XX_OSWE ;
 scalar_t__* IXP4XX_OSWK ;
 int* IXP4XX_OSWT ;
 int IXP4XX_WDT_COUNT_ENABLE ;
 scalar_t__ IXP4XX_WDT_KEY ;
 int IXP4XX_WDT_RESET_ENABLE ;
 int WDT_TICK_RATE ;
 int heartbeat ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;

__attribute__((used)) static void wdt_enable(void)
{
 spin_lock(&wdt_lock);
 *IXP4XX_OSWK = IXP4XX_WDT_KEY;
 *IXP4XX_OSWE = 0;
 *IXP4XX_OSWT = WDT_TICK_RATE * heartbeat;
 *IXP4XX_OSWE = IXP4XX_WDT_COUNT_ENABLE | IXP4XX_WDT_RESET_ENABLE;
 *IXP4XX_OSWK = 0;
 spin_unlock(&wdt_lock);
}
