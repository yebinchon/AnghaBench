
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_bind_virq {unsigned int virq; unsigned int vcpu; int port; } ;


 int BUG () ;
 int EVTCHNOP_bind_virq ;
 scalar_t__ HYPERVISOR_event_channel_op (int ,struct evtchn_bind_virq*) ;
 int bind_evtchn_to_cpu (int,unsigned int) ;
 int* evtchn_to_irq ;
 int find_unbound_irq () ;
 int handle_percpu_irq ;
 int * irq_info ;
 int irq_mapping_update_lock ;
 int mk_virq_info (int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* per_cpu (int ,unsigned int) ;
 int set_irq_chip_and_handler_name (int,int *,int ,char*) ;
 int virq_to_irq ;
 int xen_percpu_chip ;

__attribute__((used)) static int bind_virq_to_irq(unsigned int virq, unsigned int cpu)
{
 struct evtchn_bind_virq bind_virq;
 int evtchn, irq;

 mutex_lock(&irq_mapping_update_lock);

 irq = per_cpu(virq_to_irq, cpu)[virq];

 if (irq == -1) {
  irq = find_unbound_irq();

  set_irq_chip_and_handler_name(irq, &xen_percpu_chip,
           handle_percpu_irq, "virq");

  bind_virq.virq = virq;
  bind_virq.vcpu = cpu;
  if (HYPERVISOR_event_channel_op(EVTCHNOP_bind_virq,
      &bind_virq) != 0)
   BUG();
  evtchn = bind_virq.port;

  evtchn_to_irq[evtchn] = irq;
  irq_info[irq] = mk_virq_info(evtchn, virq);

  per_cpu(virq_to_irq, cpu)[virq] = irq;

  bind_evtchn_to_cpu(evtchn, cpu);
 }

 mutex_unlock(&irq_mapping_update_lock);

 return irq;
}
