
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int wq; int requests; } ;


 int DEFINE_WAIT (int ) ;
 int KVM_REQ_UNHALT ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 scalar_t__ kvm_arch_vcpu_runnable (struct kvm_vcpu*) ;
 scalar_t__ kvm_cpu_has_pending_timer (struct kvm_vcpu*) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;
 int wait ;

void kvm_vcpu_block(struct kvm_vcpu *vcpu)
{
 DEFINE_WAIT(wait);

 for (;;) {
  prepare_to_wait(&vcpu->wq, &wait, TASK_INTERRUPTIBLE);

  if (kvm_arch_vcpu_runnable(vcpu)) {
   set_bit(KVM_REQ_UNHALT, &vcpu->requests);
   break;
  }
  if (kvm_cpu_has_pending_timer(vcpu))
   break;
  if (signal_pending(current))
   break;

  vcpu_put(vcpu);
  schedule();
  vcpu_load(vcpu);
 }

 finish_wait(&vcpu->wq, &wait);
}
