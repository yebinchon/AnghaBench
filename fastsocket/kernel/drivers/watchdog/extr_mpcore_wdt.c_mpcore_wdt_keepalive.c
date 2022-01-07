
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcore_wdt {int perturb; scalar_t__ base; } ;


 scalar_t__ TWD_WDOG_LOAD ;
 int mpcore_margin ;
 int mpcore_timer_rate ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mpcore_wdt_keepalive(struct mpcore_wdt *wdt)
{
 unsigned int count;


 count = (mpcore_timer_rate / 256) * mpcore_margin;


 spin_lock(&wdt_lock);
 writel(count + wdt->perturb, wdt->base + TWD_WDOG_LOAD);
 wdt->perturb = wdt->perturb ? 0 : 1;
 spin_unlock(&wdt_lock);
}
