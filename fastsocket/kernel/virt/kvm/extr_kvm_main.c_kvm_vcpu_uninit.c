
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {scalar_t__ run; int pid; } ;


 int free_page (unsigned long) ;
 int kvm_arch_vcpu_uninit (struct kvm_vcpu*) ;
 int put_pid (int ) ;

void kvm_vcpu_uninit(struct kvm_vcpu *vcpu)
{
 put_pid(vcpu->pid);
 kvm_arch_vcpu_uninit(vcpu);
 free_page((unsigned long)vcpu->run);
}
