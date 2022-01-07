
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa25x_udc {scalar_t__ ep0state; } ;


 int DBG (int ,char*) ;
 int DBG_VERBOSE ;
 scalar_t__ EP0_STALL ;
 int UDCCS0 ;
 int UDCCS0_FST ;
 int UDCCS0_FTF ;
 int UDCCS0_SST ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int start_watchdog (struct pxa25x_udc*) ;

__attribute__((used)) static void udc_watchdog(unsigned long _dev)
{
 struct pxa25x_udc *dev = (void *)_dev;

 local_irq_disable();
 if (dev->ep0state == EP0_STALL
   && (UDCCS0 & UDCCS0_FST) == 0
   && (UDCCS0 & UDCCS0_SST) == 0) {
  UDCCS0 = UDCCS0_FST|UDCCS0_FTF;
  DBG(DBG_VERBOSE, "ep0 re-stall\n");
  start_watchdog(dev);
 }
 local_irq_enable();
}
