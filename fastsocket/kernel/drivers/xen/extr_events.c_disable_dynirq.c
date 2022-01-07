
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VALID_EVTCHN (int) ;
 int evtchn_from_irq (unsigned int) ;
 int mask_evtchn (int) ;

__attribute__((used)) static void disable_dynirq(unsigned int irq)
{
 int evtchn = evtchn_from_irq(irq);

 if (VALID_EVTCHN(evtchn))
  mask_evtchn(evtchn);
}
