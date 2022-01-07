
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {int dummy; } ;
struct kvm_memory_slot {int dummy; } ;
struct kvm {int dummy; } ;
typedef int gfn_t ;


 struct kvm_memory_slot* __gfn_to_memslot_unaliased (struct kvm_memslots*,int ) ;
 struct kvm_memslots* kvm_memslots (struct kvm*) ;

struct kvm_memory_slot *gfn_to_memslot_unaliased(struct kvm *kvm, gfn_t gfn)
{
 struct kvm_memslots *slots = kvm_memslots(kvm);
 return __gfn_to_memslot_unaliased(slots, gfn);
}
