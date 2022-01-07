
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int io_lock; scalar_t__ runtime_reg; } ;


 int WDIOF_CARDRESET ;
 scalar_t__ WDT_CTRL ;
 unsigned char inb (scalar_t__) ;
 TYPE_1__ sch311x_wdt_data ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void sch311x_wdt_get_status(int *status)
{
 unsigned char new_status;

 *status = 0;

 spin_lock(&sch311x_wdt_data.io_lock);
 new_status = inb(sch311x_wdt_data.runtime_reg + WDT_CTRL);
 if (new_status & 0x01)
  *status |= WDIOF_CARDRESET;

 spin_unlock(&sch311x_wdt_data.io_lock);
}
