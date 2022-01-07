
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RSTOUTn_MASK ;
 int TIMER_CTRL ;
 int WDT_EN ;
 int WDT_RESET_OUT_EN ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;
 int writel (int ,int ) ;

__attribute__((used)) static void orion_wdt_disable(void)
{
 u32 reg;

 spin_lock(&wdt_lock);


 reg = readl(RSTOUTn_MASK);
 reg &= ~WDT_RESET_OUT_EN;
 writel(reg, RSTOUTn_MASK);


 reg = readl(TIMER_CTRL);
 reg &= ~WDT_EN;
 writel(reg, TIMER_CTRL);

 spin_unlock(&wdt_lock);
}
