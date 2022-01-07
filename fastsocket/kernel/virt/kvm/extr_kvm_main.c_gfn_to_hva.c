
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 unsigned long __gfn_to_hva (struct kvm_memory_slot*,int ) ;
 struct kvm_memory_slot* gfn_to_memslot_unaliased (struct kvm*,int ) ;
 int unalias_gfn_instantiation (struct kvm*,int ) ;

unsigned long gfn_to_hva(struct kvm *kvm, gfn_t gfn)
{
 struct kvm_memory_slot *slot;

 gfn = unalias_gfn_instantiation(kvm, gfn);
 slot = gfn_to_memslot_unaliased(kvm, gfn);
 return __gfn_to_hva(slot, gfn);
}
