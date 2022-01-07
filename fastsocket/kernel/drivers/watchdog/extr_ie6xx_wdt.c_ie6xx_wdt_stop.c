
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct TYPE_2__ {int unlock_sequence; scalar_t__ sch_wdtba; } ;


 scalar_t__ WDTLR ;
 int WDT_LOCK ;
 TYPE_1__ ie6xx_wdt_data ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ie6xx_wdt_stop(struct watchdog_device *wdd)
{
 if (inb(ie6xx_wdt_data.sch_wdtba + WDTLR) & WDT_LOCK)
  return -1;


 spin_lock(&ie6xx_wdt_data.unlock_sequence);
 outb(0, ie6xx_wdt_data.sch_wdtba + WDTLR);
 spin_unlock(&ie6xx_wdt_data.unlock_sequence);

 return 0;
}
