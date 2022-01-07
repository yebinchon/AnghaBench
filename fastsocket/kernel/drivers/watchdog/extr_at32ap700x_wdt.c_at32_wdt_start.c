
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timeout; int io_lock; } ;


 int CTRL ;
 int CTRL_EN ;
 int CTRL_KEY ;
 int CTRL_PSEL ;
 int WDT_BF (int ,int) ;
 int WDT_BIT (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* wdt ;
 int wdt_writel (TYPE_1__*,int ,int) ;

__attribute__((used)) static inline void at32_wdt_start(void)
{

 unsigned long psel = (wdt->timeout > 1) ? 0xf : 0xe;

 spin_lock(&wdt->io_lock);
 wdt_writel(wdt, CTRL, WDT_BIT(CTRL_EN)
   | WDT_BF(CTRL_PSEL, psel)
   | WDT_BF(CTRL_KEY, 0x55));
 wdt_writel(wdt, CTRL, WDT_BIT(CTRL_EN)
   | WDT_BF(CTRL_PSEL, psel)
   | WDT_BF(CTRL_KEY, 0xaa));
 spin_unlock(&wdt->io_lock);
}
