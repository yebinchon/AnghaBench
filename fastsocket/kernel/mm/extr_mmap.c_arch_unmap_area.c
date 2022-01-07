
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {unsigned long free_area_cache; unsigned long cached_hole_size; int total_vm; int reserved_vm; } ;


 unsigned long TASK_UNMAPPED_BASE ;
 scalar_t__ likely (int) ;
 int sysctl_unmap_area_factor ;

void arch_unmap_area(struct mm_struct *mm, unsigned long addr)
{
 int unmap_factor = sysctl_unmap_area_factor;
 if (likely(!unmap_factor)) {



  if (addr >= TASK_UNMAPPED_BASE && addr < mm->free_area_cache) {
   mm->free_area_cache = addr;
   mm->cached_hole_size = ~0UL;
  }
 } else {




  if (mm->cached_hole_size >
      (mm->total_vm - mm->reserved_vm) / unmap_factor) {
   mm->free_area_cache = TASK_UNMAPPED_BASE;
   mm->cached_hole_size = 0UL;
  }
 }
}
