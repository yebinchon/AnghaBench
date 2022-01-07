
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adx_wdt {int lock; scalar_t__ base; int timeout; } ;


 scalar_t__ ADX_WDT_TIMEOUT ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void adx_wdt_keepalive(struct adx_wdt *wdt)
{
 unsigned long flags;

 spin_lock_irqsave(&wdt->lock, flags);
 writel(wdt->timeout, wdt->base + ADX_WDT_TIMEOUT);
 spin_unlock_irqrestore(&wdt->lock, flags);
}
