
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ runtime_reg; } ;


 scalar_t__ WDT_TIME_OUT ;
 scalar_t__ WDT_VAL ;
 int outb (int,scalar_t__) ;
 TYPE_1__ sch311x_wdt_data ;

__attribute__((used)) static void sch311x_wdt_set_timeout(int t)
{
 unsigned char timeout_unit = 0x80;


 if (t > 255) {
  timeout_unit = 0;
  t /= 60;
 }






 outb(timeout_unit, sch311x_wdt_data.runtime_reg + WDT_TIME_OUT);




 outb(t, sch311x_wdt_data.runtime_reg + WDT_VAL);
}
