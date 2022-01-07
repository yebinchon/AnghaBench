
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {unsigned long base_gfn; scalar_t__ dirty_bitmap; } ;
struct kvm {int dummy; } ;
typedef unsigned long gfn_t ;


 int set_bit (unsigned long,scalar_t__) ;
 int test_bit (unsigned long,scalar_t__) ;

void mark_page_dirty_in_slot(struct kvm *kvm, struct kvm_memory_slot *memslot,
        gfn_t gfn)
{
 if (memslot && memslot->dirty_bitmap) {
  unsigned long rel_gfn = gfn - memslot->base_gfn;


  if (!test_bit(rel_gfn, memslot->dirty_bitmap))
   set_bit(rel_gfn, memslot->dirty_bitmap);
 }
}
