
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpcore_wdt {scalar_t__ base; int dev; } ;


 int KERN_INFO ;
 scalar_t__ TWD_WDOG_CONTROL ;
 int dev_printk (int ,int ,char*) ;
 scalar_t__ mpcore_noboot ;
 int mpcore_wdt_keepalive (struct mpcore_wdt*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_lock ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mpcore_wdt_start(struct mpcore_wdt *wdt)
{
 dev_printk(KERN_INFO, wdt->dev, "enabling watchdog.\n");

 spin_lock(&wdt_lock);

 mpcore_wdt_keepalive(wdt);

 if (mpcore_noboot) {

  writel(0x0000FF01, wdt->base + TWD_WDOG_CONTROL);
 } else {

  writel(0x0000FF09, wdt->base + TWD_WDOG_CONTROL);
 }
 spin_unlock(&wdt_lock);
}
