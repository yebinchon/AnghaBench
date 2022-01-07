
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {unsigned long free_area_cache; unsigned long mmap_base; unsigned int cached_hole_size; unsigned int total_vm; unsigned int reserved_vm; } ;


 scalar_t__ likely (int) ;
 unsigned int sysctl_unmap_area_factor ;

void arch_unmap_area_topdown(struct mm_struct *mm, unsigned long addr)
{
 unsigned int unmap_factor = sysctl_unmap_area_factor;
 if (likely(!unmap_factor)) {



  if (addr > mm->free_area_cache)
   mm->free_area_cache = addr;


  if (mm->free_area_cache > mm->mmap_base)
   mm->free_area_cache = mm->mmap_base;
 } else {




  if (mm->cached_hole_size >
      (mm->total_vm - mm->reserved_vm) / unmap_factor) {
   mm->free_area_cache = mm->mmap_base;
   mm->cached_hole_size = 0UL;
  }
 }
}
