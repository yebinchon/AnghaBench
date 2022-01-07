
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preempt_notifier {int dummy; } ;
struct kvm_vcpu {int preempted; } ;


 int kvm_arch_vcpu_load (struct kvm_vcpu*,int) ;
 struct kvm_vcpu* preempt_notifier_to_vcpu (struct preempt_notifier*) ;

__attribute__((used)) static void kvm_sched_in(struct preempt_notifier *pn, int cpu)
{
 struct kvm_vcpu *vcpu = preempt_notifier_to_vcpu(pn);
 if (vcpu->preempted)
  vcpu->preempted = 0;

 kvm_arch_vcpu_load(vcpu, cpu);
}
