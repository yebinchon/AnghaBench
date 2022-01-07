
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* pdev; int timer; int next_heartbeat; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ WDT_TIMEOUT ;
 int dev_warn (int *,char*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 TYPE_2__* nuc900_wdt ;
 int nuc900_wdt_keepalive () ;
 scalar_t__ time_before (scalar_t__,int ) ;

__attribute__((used)) static void nuc900_wdt_timer_ping(unsigned long data)
{
 if (time_before(jiffies, nuc900_wdt->next_heartbeat)) {
  nuc900_wdt_keepalive();
  mod_timer(&nuc900_wdt->timer, jiffies + WDT_TIMEOUT);
 } else
  dev_warn(&nuc900_wdt->pdev->dev, "Will reset the machine !\n");
}
