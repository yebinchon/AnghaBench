
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int KVM_REQ_MMU_RELOAD ;
 int make_all_cpus_request (struct kvm*,int ) ;

void kvm_reload_remote_mmus(struct kvm *kvm)
{
 make_all_cpus_request(kvm, KVM_REQ_MMU_RELOAD);
}
