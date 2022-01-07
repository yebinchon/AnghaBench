
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_bind_ipi {unsigned int vcpu; int port; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int EVTCHNOP_bind_ipi ;
 scalar_t__ HYPERVISOR_event_channel_op (int ,struct evtchn_bind_ipi*) ;
 int XEN_NR_IPIS ;
 int bind_evtchn_to_cpu (int,unsigned int) ;
 int* evtchn_to_irq ;
 int ipi_from_irq (int) ;
 int ipi_to_irq ;
 int * irq_info ;
 int mk_ipi_info (int,int) ;
 int* per_cpu (int ,unsigned int) ;

__attribute__((used)) static void restore_cpu_ipis(unsigned int cpu)
{
 struct evtchn_bind_ipi bind_ipi;
 int ipi, irq, evtchn;

 for (ipi = 0; ipi < XEN_NR_IPIS; ipi++) {
  if ((irq = per_cpu(ipi_to_irq, cpu)[ipi]) == -1)
   continue;

  BUG_ON(ipi_from_irq(irq) != ipi);


  bind_ipi.vcpu = cpu;
  if (HYPERVISOR_event_channel_op(EVTCHNOP_bind_ipi,
      &bind_ipi) != 0)
   BUG();
  evtchn = bind_ipi.port;


  evtchn_to_irq[evtchn] = irq;
  irq_info[irq] = mk_ipi_info(evtchn, ipi);
  bind_evtchn_to_cpu(evtchn, cpu);
 }
}
