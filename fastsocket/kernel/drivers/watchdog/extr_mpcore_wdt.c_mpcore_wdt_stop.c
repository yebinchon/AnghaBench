
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcore_wdt {scalar_t__ base; } ;


 scalar_t__ TWD_WDOG_CONTROL ;
 scalar_t__ TWD_WDOG_DISABLE ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mpcore_wdt_stop(struct mpcore_wdt *wdt)
{
 spin_lock(&wdt_lock);
 writel(0x12345678, wdt->base + TWD_WDOG_DISABLE);
 writel(0x87654321, wdt->base + TWD_WDOG_DISABLE);
 writel(0x0, wdt->base + TWD_WDOG_CONTROL);
 spin_unlock(&wdt_lock);
}
