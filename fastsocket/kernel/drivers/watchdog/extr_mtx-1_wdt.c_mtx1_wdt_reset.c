
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int default_ticks; } ;


 TYPE_1__ mtx1_wdt_device ;
 int ticks ;

__attribute__((used)) static void mtx1_wdt_reset(void)
{
 ticks = mtx1_wdt_device.default_ticks;
}
