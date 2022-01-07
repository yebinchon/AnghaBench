
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcore_wdt {scalar_t__ base; int dev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int KERN_CRIT ;
 scalar_t__ TWD_WDOG_INTSTAT ;
 int dev_printk (int ,int ,char*) ;
 scalar_t__ readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t mpcore_wdt_fire(int irq, void *arg)
{
 struct mpcore_wdt *wdt = arg;


 if (readl(wdt->base + TWD_WDOG_INTSTAT)) {
  dev_printk(KERN_CRIT, wdt->dev,
     "Triggered - Reboot ignored.\n");

  writel(1, wdt->base + TWD_WDOG_INTSTAT);
  return IRQ_HANDLED;
 }
 return IRQ_NONE;
}
