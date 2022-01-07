
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evtchn_bind_vcpu {int port; unsigned int vcpu; } ;


 int EVTCHNOP_bind_vcpu ;
 scalar_t__ HYPERVISOR_event_channel_op (int ,struct evtchn_bind_vcpu*) ;
 int VALID_EVTCHN (int) ;
 int bind_evtchn_to_cpu (int,unsigned int) ;
 int evtchn_from_irq (unsigned int) ;
 int xen_have_vector_callback ;
 scalar_t__ xen_hvm_domain () ;

__attribute__((used)) static int rebind_irq_to_cpu(unsigned irq, unsigned tcpu)
{
 struct evtchn_bind_vcpu bind_vcpu;
 int evtchn = evtchn_from_irq(irq);



 if (!VALID_EVTCHN(evtchn) ||
  (xen_hvm_domain() && !xen_have_vector_callback))
  return -1;


 bind_vcpu.port = evtchn;
 bind_vcpu.vcpu = tcpu;






 if (HYPERVISOR_event_channel_op(EVTCHNOP_bind_vcpu, &bind_vcpu) >= 0)
  bind_evtchn_to_cpu(evtchn, tcpu);

 return 0;
}
