
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_lock; } ;


 int CTRL ;
 int CTRL_KEY ;
 int CTRL_PSEL ;
 unsigned long WDT_BF (int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* wdt ;
 unsigned long wdt_readl (TYPE_1__*,int ) ;
 int wdt_writel (TYPE_1__*,int ,unsigned long) ;

__attribute__((used)) static inline void at32_wdt_stop(void)
{
 unsigned long psel;

 spin_lock(&wdt->io_lock);
 psel = wdt_readl(wdt, CTRL) & WDT_BF(CTRL_PSEL, 0x0f);
 wdt_writel(wdt, CTRL, psel | WDT_BF(CTRL_KEY, 0x55));
 wdt_writel(wdt, CTRL, psel | WDT_BF(CTRL_KEY, 0xaa));
 spin_unlock(&wdt->io_lock);
}
