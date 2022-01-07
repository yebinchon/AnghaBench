
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int timeout; } ;
struct TYPE_2__ {int unlock_sequence; scalar_t__ sch_wdtba; } ;


 scalar_t__ WDTLR ;
 int WDT_ENABLE ;
 TYPE_1__ ie6xx_wdt_data ;
 int ie6xx_wdt_set_timeout (struct watchdog_device*,int ) ;
 int outb (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int ie6xx_wdt_start(struct watchdog_device *wdd)
{
 ie6xx_wdt_set_timeout(wdd, wdd->timeout);


 spin_lock(&ie6xx_wdt_data.unlock_sequence);
 outb(WDT_ENABLE, ie6xx_wdt_data.sch_wdtba + WDTLR);
 spin_unlock(&ie6xx_wdt_data.unlock_sequence);

 return 0;
}
