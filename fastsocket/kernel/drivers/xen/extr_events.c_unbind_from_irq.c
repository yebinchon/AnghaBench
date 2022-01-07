
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct evtchn_close {int port; } ;
struct TYPE_3__ {scalar_t__ type; } ;


 int BUG () ;
 int EVTCHNOP_close ;
 scalar_t__ HYPERVISOR_event_channel_op (int ,struct evtchn_close*) ;

 scalar_t__ IRQT_UNBOUND ;

 scalar_t__ VALID_EVTCHN (int) ;
 int bind_evtchn_to_cpu (int,int ) ;
 int cpu_from_evtchn (int) ;
 int dynamic_irq_cleanup (unsigned int) ;
 int evtchn_from_irq (unsigned int) ;
 int* evtchn_to_irq ;
 size_t ipi_from_irq (unsigned int) ;
 int ipi_to_irq ;
 TYPE_1__* irq_info ;
 int irq_mapping_update_lock ;
 TYPE_1__ mk_unbound_info () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* per_cpu (int ,int ) ;
 int type_from_irq (unsigned int) ;
 size_t virq_from_irq (unsigned int) ;
 int virq_to_irq ;

__attribute__((used)) static void unbind_from_irq(unsigned int irq)
{
 struct evtchn_close close;
 int evtchn = evtchn_from_irq(irq);

 mutex_lock(&irq_mapping_update_lock);

 if (VALID_EVTCHN(evtchn)) {
  close.port = evtchn;
  if (HYPERVISOR_event_channel_op(EVTCHNOP_close, &close) != 0)
   BUG();

  switch (type_from_irq(irq)) {
  case 128:
   per_cpu(virq_to_irq, cpu_from_evtchn(evtchn))
    [virq_from_irq(irq)] = -1;
   break;
  case 129:
   per_cpu(ipi_to_irq, cpu_from_evtchn(evtchn))
    [ipi_from_irq(irq)] = -1;
   break;
  default:
   break;
  }


  bind_evtchn_to_cpu(evtchn, 0);

  evtchn_to_irq[evtchn] = -1;
 }

 if (irq_info[irq].type != IRQT_UNBOUND) {
  irq_info[irq] = mk_unbound_info();

  dynamic_irq_cleanup(irq);
 }

 mutex_unlock(&irq_mapping_update_lock);
}
