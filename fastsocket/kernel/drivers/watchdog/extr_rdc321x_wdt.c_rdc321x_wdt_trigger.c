
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stop; int timer; scalar_t__ queue; int lock; scalar_t__ running; } ;


 int RDC3210_CFGREG_DATA ;
 int RDC_WDT_EN ;
 scalar_t__ RDC_WDT_INTERVAL ;
 int complete (int *) ;
 int inl (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outl (int,int ) ;
 TYPE_1__ rdc321x_wdt_device ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ ticks ;

__attribute__((used)) static void rdc321x_wdt_trigger(unsigned long unused)
{
 unsigned long flags;

 if (rdc321x_wdt_device.running)
  ticks--;


 spin_lock_irqsave(&rdc321x_wdt_device.lock, flags);
 outl(RDC_WDT_EN | inl(RDC3210_CFGREG_DATA),
  RDC3210_CFGREG_DATA);
 spin_unlock_irqrestore(&rdc321x_wdt_device.lock, flags);


 if (rdc321x_wdt_device.queue && ticks)
  mod_timer(&rdc321x_wdt_device.timer,
    jiffies + RDC_WDT_INTERVAL);
 else {

  complete(&rdc321x_wdt_device.stop);
 }

}
