
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memslots {int nmemslots; struct kvm_memory_slot* memslots; } ;
struct kvm_memory_slot {scalar_t__ base_gfn; scalar_t__ npages; } ;
typedef scalar_t__ gfn_t ;



__attribute__((used)) static struct kvm_memory_slot *
__gfn_to_memslot_unaliased(struct kvm_memslots *slots, gfn_t gfn)
{
 int i;

 for (i = 0; i < slots->nmemslots; ++i) {
  struct kvm_memory_slot *memslot = &slots->memslots[i];

  if (gfn >= memslot->base_gfn
      && gfn < memslot->base_gfn + memslot->npages)
   return memslot;
 }
 return ((void*)0);
}
