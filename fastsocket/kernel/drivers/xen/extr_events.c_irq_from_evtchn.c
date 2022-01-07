
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* evtchn_to_irq ;

unsigned irq_from_evtchn(unsigned int evtchn)
{
 return evtchn_to_irq[evtchn];
}
