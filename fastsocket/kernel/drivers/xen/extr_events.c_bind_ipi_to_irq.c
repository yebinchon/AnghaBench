
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_bind_ipi {unsigned int vcpu; int port; } ;


 int BUG () ;
 int EVTCHNOP_bind_ipi ;
 scalar_t__ HYPERVISOR_event_channel_op (int ,struct evtchn_bind_ipi*) ;
 int bind_evtchn_to_cpu (int,unsigned int) ;
 int* evtchn_to_irq ;
 int find_unbound_irq () ;
 int handle_percpu_irq ;
 int ipi_to_irq ;
 int * irq_info ;
 int irq_mapping_update_lock ;
 int mk_ipi_info (int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* per_cpu (int ,unsigned int) ;
 int set_irq_chip_and_handler_name (int,int *,int ,char*) ;
 int xen_percpu_chip ;

__attribute__((used)) static int bind_ipi_to_irq(unsigned int ipi, unsigned int cpu)
{
 struct evtchn_bind_ipi bind_ipi;
 int evtchn, irq;

 mutex_lock(&irq_mapping_update_lock);

 irq = per_cpu(ipi_to_irq, cpu)[ipi];

 if (irq == -1) {
  irq = find_unbound_irq();
  if (irq < 0)
   goto out;

  set_irq_chip_and_handler_name(irq, &xen_percpu_chip,
           handle_percpu_irq, "ipi");

  bind_ipi.vcpu = cpu;
  if (HYPERVISOR_event_channel_op(EVTCHNOP_bind_ipi,
      &bind_ipi) != 0)
   BUG();
  evtchn = bind_ipi.port;

  evtchn_to_irq[evtchn] = irq;
  irq_info[irq] = mk_ipi_info(evtchn, ipi);
  per_cpu(ipi_to_irq, cpu)[ipi] = irq;

  bind_evtchn_to_cpu(evtchn, cpu);
 }

 out:
 mutex_unlock(&irq_mapping_update_lock);
 return irq;
}
