
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VALID_EVTCHN (int) ;
 int evtchn_from_irq (int) ;
 int test_evtchn (int) ;

bool xen_test_irq_pending(int irq)
{
 int evtchn = evtchn_from_irq(irq);
 bool ret = 0;

 if (VALID_EVTCHN(evtchn))
  ret = test_evtchn(evtchn);

 return ret;
}
