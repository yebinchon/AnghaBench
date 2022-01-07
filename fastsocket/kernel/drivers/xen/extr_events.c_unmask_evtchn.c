
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_info {int evtchn_upcall_pending; int evtchn_pending_sel; } ;
struct shared_info {int * evtchn_pending; int * evtchn_mask; } ;
struct evtchn_unmask {int port; } ;


 int BITS_PER_LONG ;
 int BUG_ON (int) ;
 int EVTCHNOP_unmask ;
 int HYPERVISOR_event_channel_op (int ,struct evtchn_unmask*) ;
 struct shared_info* HYPERVISOR_shared_info ;
 struct vcpu_info* __get_cpu_var (int ) ;
 unsigned int cpu_from_evtchn (int) ;
 unsigned int get_cpu () ;
 int irqs_disabled () ;
 int put_cpu () ;
 int sync_clear_bit (int,int *) ;
 int sync_test_and_set_bit (int,int *) ;
 scalar_t__ sync_test_bit (int,int *) ;
 scalar_t__ unlikely (int) ;
 int xen_vcpu ;

__attribute__((used)) static void unmask_evtchn(int port)
{
 struct shared_info *s = HYPERVISOR_shared_info;
 unsigned int cpu = get_cpu();

 BUG_ON(!irqs_disabled());


 if (unlikely(cpu != cpu_from_evtchn(port))) {
  struct evtchn_unmask unmask = { .port = port };
  (void)HYPERVISOR_event_channel_op(EVTCHNOP_unmask, &unmask);
 } else {
  struct vcpu_info *vcpu_info = __get_cpu_var(xen_vcpu);

  sync_clear_bit(port, &s->evtchn_mask[0]);






  if (sync_test_bit(port, &s->evtchn_pending[0]) &&
      !sync_test_and_set_bit(port / BITS_PER_LONG,
        &vcpu_info->evtchn_pending_sel))
   vcpu_info->evtchn_upcall_pending = 1;
 }

 put_cpu();
}
