
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct twl4030_wdt {int timer_margin; TYPE_1__ miscdev; } ;


 int EINVAL ;
 int dev_warn (int ,char*) ;
 int twl4030_wdt_enable (struct twl4030_wdt*) ;

__attribute__((used)) static int twl4030_wdt_set_timeout(struct twl4030_wdt *wdt, int timeout)
{
 if (timeout < 0 || timeout > 30) {
  dev_warn(wdt->miscdev.parent,
   "Timeout can only be in the range [0-30] seconds");
  return -EINVAL;
 }
 wdt->timer_margin = timeout;
 return twl4030_wdt_enable(wdt);
}
