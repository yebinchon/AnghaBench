
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_info {int evtchn_pending; int evtchn_mask; } ;


 struct shared_info* HYPERVISOR_shared_info ;
 scalar_t__ VALID_EVTCHN (int) ;
 int evtchn_from_irq (unsigned int) ;
 int sync_set_bit (int,int ) ;
 int sync_test_and_set_bit (int,int ) ;
 int unmask_evtchn (int) ;

__attribute__((used)) static int retrigger_dynirq(unsigned int irq)
{
 int evtchn = evtchn_from_irq(irq);
 struct shared_info *sh = HYPERVISOR_shared_info;
 int ret = 0;

 if (VALID_EVTCHN(evtchn)) {
  int masked;

  masked = sync_test_and_set_bit(evtchn, sh->evtchn_mask);
  sync_set_bit(evtchn, sh->evtchn_pending);
  if (!masked)
   unmask_evtchn(evtchn);
  ret = 1;
 }

 return ret;
}
