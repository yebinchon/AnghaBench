
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 struct kvm_memory_slot* gfn_to_memslot_unaliased (struct kvm*,int ) ;
 int unalias_gfn (struct kvm*,int ) ;

struct kvm_memory_slot *gfn_to_memslot(struct kvm *kvm, gfn_t gfn)
{
 gfn = unalias_gfn(kvm, gfn);
 return gfn_to_memslot_unaliased(kvm, gfn);
}
