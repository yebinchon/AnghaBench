
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int cond_resched () ;
 int need_resched () ;

void kvm_resched(struct kvm_vcpu *vcpu)
{
 if (!need_resched())
  return;
 cond_resched();
}
