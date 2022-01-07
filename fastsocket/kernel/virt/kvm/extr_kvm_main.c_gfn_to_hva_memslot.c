
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {unsigned long userspace_addr; int base_gfn; } ;
typedef int gfn_t ;


 int PAGE_SIZE ;

__attribute__((used)) static unsigned long gfn_to_hva_memslot(struct kvm_memory_slot *slot, gfn_t gfn)
{
 return (slot->userspace_addr + (gfn - slot->base_gfn) * PAGE_SIZE);
}
