
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int remote_tlb_flush; } ;
struct kvm {TYPE_1__ stat; } ;


 int KVM_REQ_TLB_FLUSH ;
 scalar_t__ make_all_cpus_request (struct kvm*,int ) ;

void kvm_flush_remote_tlbs(struct kvm *kvm)
{
 if (make_all_cpus_request(kvm, KVM_REQ_TLB_FLUSH))
  ++kvm->stat.remote_tlb_flush;
}
