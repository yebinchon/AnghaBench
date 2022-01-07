
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int queue; int running; int timer; int lock; } ;


 int RDC3210_CFGREG_ADDR ;
 int RDC3210_CFGREG_DATA ;
 int RDC_CLS_TMR ;
 int RDC_WDT_CNT ;
 int RDC_WDT_EN ;
 scalar_t__ RDC_WDT_INTERVAL ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outl (int,int ) ;
 TYPE_1__ rdc321x_wdt_device ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void rdc321x_wdt_start(void)
{
 unsigned long flags;

 if (!rdc321x_wdt_device.queue) {
  rdc321x_wdt_device.queue = 1;


  spin_lock_irqsave(&rdc321x_wdt_device.lock, flags);
  outl(RDC_CLS_TMR, RDC3210_CFGREG_ADDR);


  outl(RDC_WDT_EN | RDC_WDT_CNT, RDC3210_CFGREG_DATA);
  spin_unlock_irqrestore(&rdc321x_wdt_device.lock, flags);

  mod_timer(&rdc321x_wdt_device.timer,
    jiffies + RDC_WDT_INTERVAL);
 }


 rdc321x_wdt_device.running++;
}
