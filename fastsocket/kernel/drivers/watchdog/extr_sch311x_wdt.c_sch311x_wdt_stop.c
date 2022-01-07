
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_lock; scalar_t__ runtime_reg; } ;


 scalar_t__ GP60 ;
 int outb (int,scalar_t__) ;
 TYPE_1__ sch311x_wdt_data ;
 int sch311x_wdt_set_timeout (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sch311x_wdt_stop(void)
{
 spin_lock(&sch311x_wdt_data.io_lock);


 outb(0x01, sch311x_wdt_data.runtime_reg + GP60);

 sch311x_wdt_set_timeout(0);

 spin_unlock(&sch311x_wdt_data.io_lock);
}
