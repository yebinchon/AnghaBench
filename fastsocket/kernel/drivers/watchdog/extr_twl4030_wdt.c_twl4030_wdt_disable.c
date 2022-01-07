
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl4030_wdt {int dummy; } ;


 int twl4030_wdt_write (int ) ;

__attribute__((used)) static int twl4030_wdt_disable(struct twl4030_wdt *wdt)
{
 return twl4030_wdt_write(0);
}
