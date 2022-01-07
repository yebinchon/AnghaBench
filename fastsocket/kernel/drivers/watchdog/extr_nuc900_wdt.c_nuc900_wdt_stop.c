
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wdt_lock; scalar_t__ wdt_base; int timer; } ;


 scalar_t__ REG_WTCR ;
 unsigned int WTE ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 int del_timer (int *) ;
 TYPE_1__* nuc900_wdt ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void nuc900_wdt_stop(void)
{
 unsigned int val;

 del_timer(&nuc900_wdt->timer);

 spin_lock(&nuc900_wdt->wdt_lock);

 val = __raw_readl(nuc900_wdt->wdt_base + REG_WTCR);
 val &= ~WTE;
 __raw_writel(val, nuc900_wdt->wdt_base + REG_WTCR);

 spin_unlock(&nuc900_wdt->wdt_lock);
}
