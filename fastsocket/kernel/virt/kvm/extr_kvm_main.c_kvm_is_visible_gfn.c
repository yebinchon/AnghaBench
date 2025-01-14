
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {struct kvm_memory_slot* memslots; } ;
struct kvm_memory_slot {int flags; scalar_t__ base_gfn; scalar_t__ npages; } ;
struct kvm {int memslots; } ;
typedef scalar_t__ gfn_t ;


 int KVM_MEMORY_SLOTS ;
 int KVM_MEMSLOT_INVALID ;
 struct kvm_memslots* rcu_dereference (int ) ;
 scalar_t__ unalias_gfn_instantiation (struct kvm*,scalar_t__) ;

int kvm_is_visible_gfn(struct kvm *kvm, gfn_t gfn)
{
 int i;
 struct kvm_memslots *slots = rcu_dereference(kvm->memslots);

 gfn = unalias_gfn_instantiation(kvm, gfn);
 for (i = 0; i < KVM_MEMORY_SLOTS; ++i) {
  struct kvm_memory_slot *memslot = &slots->memslots[i];

  if (memslot->flags & KVM_MEMSLOT_INVALID)
   continue;

  if (gfn >= memslot->base_gfn
      && gfn < memslot->base_gfn + memslot->npages)
   return 1;
 }
 return 0;
}
