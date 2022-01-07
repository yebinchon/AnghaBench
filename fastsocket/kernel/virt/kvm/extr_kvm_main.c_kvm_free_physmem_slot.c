
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_memory_slot {int * rmap; int * dirty_bitmap; scalar_t__ npages; int ** lpage_info; } ;


 int KVM_NR_PAGE_SIZES ;
 int vfree (int *) ;

__attribute__((used)) static void kvm_free_physmem_slot(struct kvm_memory_slot *free,
      struct kvm_memory_slot *dont)
{
 int i;

 if (!dont || free->rmap != dont->rmap)
  vfree(free->rmap);

 if (!dont || free->dirty_bitmap != dont->dirty_bitmap)
  vfree(free->dirty_bitmap);


 for (i = 0; i < KVM_NR_PAGE_SIZES - 1; ++i) {
  if (!dont || free->lpage_info[i] != dont->lpage_info[i]) {
   vfree(free->lpage_info[i]);
   free->lpage_info[i] = ((void*)0);
  }
 }

 free->npages = 0;
 free->dirty_bitmap = ((void*)0);
 free->rmap = ((void*)0);
}
