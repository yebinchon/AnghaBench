
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adx_wdt {unsigned int state; unsigned long timeout; int lock; scalar_t__ base; } ;


 scalar_t__ ADX_WDT_TIMEOUT ;
 unsigned int WDT_STATE_START ;
 int adx_wdt_start_locked (struct adx_wdt*) ;
 int adx_wdt_stop_locked (struct adx_wdt*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned long,scalar_t__) ;

__attribute__((used)) static void adx_wdt_set_timeout(struct adx_wdt *wdt, unsigned long seconds)
{
 unsigned long timeout = seconds * 1000;
 unsigned long flags;
 unsigned int state;

 spin_lock_irqsave(&wdt->lock, flags);
 state = wdt->state;
 adx_wdt_stop_locked(wdt);
 writel(timeout, wdt->base + ADX_WDT_TIMEOUT);

 if (state == WDT_STATE_START)
  adx_wdt_start_locked(wdt);

 wdt->timeout = timeout;
 spin_unlock_irqrestore(&wdt->lock, flags);
}
