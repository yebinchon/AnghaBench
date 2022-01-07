
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adx_wdt {int lock; } ;


 int adx_wdt_stop_locked (struct adx_wdt*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void adx_wdt_stop(struct adx_wdt *wdt)
{
 unsigned long flags;

 spin_lock_irqsave(&wdt->lock, flags);
 adx_wdt_stop_locked(wdt);
 spin_unlock_irqrestore(&wdt->lock, flags);
}
