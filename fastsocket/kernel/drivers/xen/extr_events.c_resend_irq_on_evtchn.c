
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {int evtchn_pending; int evtchn_mask; } ;


 struct shared_info* HYPERVISOR_shared_info ;
 int VALID_EVTCHN (int) ;
 int evtchn_from_irq (unsigned int) ;
 int sync_set_bit (int,int ) ;
 int sync_test_and_set_bit (int,int ) ;
 int unmask_evtchn (int) ;

int resend_irq_on_evtchn(unsigned int irq)
{
 int masked, evtchn = evtchn_from_irq(irq);
 struct shared_info *s = HYPERVISOR_shared_info;

 if (!VALID_EVTCHN(evtchn))
  return 1;

 masked = sync_test_and_set_bit(evtchn, s->evtchn_mask);
 sync_set_bit(evtchn, s->evtchn_pending);
 if (!masked)
  unmask_evtchn(evtchn);

 return 1;
}
