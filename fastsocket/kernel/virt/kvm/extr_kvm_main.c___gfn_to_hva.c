
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int flags; unsigned long userspace_addr; int base_gfn; } ;
typedef int gfn_t ;


 int KVM_MEMSLOT_INVALID ;
 int PAGE_SIZE ;
 unsigned long bad_hva () ;

__attribute__((used)) static unsigned long
__gfn_to_hva(struct kvm_memory_slot *slot, gfn_t gfn)
{
 if (!slot || slot->flags & KVM_MEMSLOT_INVALID)
  return bad_hva();
 return (slot->userspace_addr + (gfn - slot->base_gfn) * PAGE_SIZE);
}
