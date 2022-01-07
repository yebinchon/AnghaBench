
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_wdt {scalar_t__ timer_margin; } ;


 int twl4030_wdt_write (scalar_t__) ;

__attribute__((used)) static int twl4030_wdt_enable(struct twl4030_wdt *wdt)
{
 return twl4030_wdt_write(wdt->timer_margin + 1);
}
