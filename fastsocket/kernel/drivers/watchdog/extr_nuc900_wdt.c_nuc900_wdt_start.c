
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer; scalar_t__ next_heartbeat; int wdt_lock; scalar_t__ wdt_base; } ;


 int HZ ;
 scalar_t__ REG_WTCR ;
 int WDT_HW_TIMEOUT ;
 scalar_t__ WDT_TIMEOUT ;
 unsigned int WTCLK ;
 unsigned int WTE ;
 unsigned int WTIF ;
 unsigned int WTIS ;
 unsigned int WTR ;
 unsigned int WTRE ;
 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 int heartbeat ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 TYPE_1__* nuc900_wdt ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void nuc900_wdt_start(void)
{
 unsigned int val;

 spin_lock(&nuc900_wdt->wdt_lock);

 val = __raw_readl(nuc900_wdt->wdt_base + REG_WTCR);
 val |= (WTRE | WTE | WTR | WTCLK | WTIF);
 val &= ~WTIS;
 val |= (WDT_HW_TIMEOUT << 0x04);
 __raw_writel(val, nuc900_wdt->wdt_base + REG_WTCR);

 spin_unlock(&nuc900_wdt->wdt_lock);

 nuc900_wdt->next_heartbeat = jiffies + heartbeat * HZ;
 mod_timer(&nuc900_wdt->timer, jiffies + WDT_TIMEOUT);
}
