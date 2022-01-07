
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BRIDGE_CAUSE ;
 int RSTOUTn_MASK ;
 int TIMER_CTRL ;
 int WDT_EN ;
 int WDT_INT_REQ ;
 int WDT_RESET_OUT_EN ;
 int WDT_VAL ;
 int heartbeat ;
 int readl (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;
 int wdt_tclk ;
 int writel (int,int ) ;

__attribute__((used)) static void orion_wdt_enable(void)
{
 u32 reg;

 spin_lock(&wdt_lock);


 writel(wdt_tclk * heartbeat, WDT_VAL);


 reg = readl(BRIDGE_CAUSE);
 reg &= ~WDT_INT_REQ;
 writel(reg, BRIDGE_CAUSE);


 reg = readl(TIMER_CTRL);
 reg |= WDT_EN;
 writel(reg, TIMER_CTRL);


 reg = readl(RSTOUTn_MASK);
 reg |= WDT_RESET_OUT_EN;
 writel(reg, RSTOUTn_MASK);

 spin_unlock(&wdt_lock);
}
