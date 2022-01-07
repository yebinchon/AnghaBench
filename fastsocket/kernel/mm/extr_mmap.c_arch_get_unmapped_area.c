
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct mm_struct {unsigned long cached_hole_size; unsigned long free_area_cache; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct mm_struct* mm; } ;


 unsigned long ENOMEM ;
 unsigned long MAP_FIXED ;
 unsigned long PAGE_ALIGN (unsigned long) ;
 unsigned long TASK_SIZE ;
 unsigned long TASK_UNMAPPED_BASE ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 scalar_t__ likely (int) ;
 unsigned long mmap_min_addr ;
 unsigned int sysctl_unmap_area_factor ;

unsigned long
arch_get_unmapped_area(struct file *filp, unsigned long addr,
  unsigned long len, unsigned long pgoff, unsigned long flags)
{
 struct mm_struct *mm = current->mm;
 struct vm_area_struct *vma;
 unsigned long start_addr;
 unsigned int unmap_factor = sysctl_unmap_area_factor;

 if (len > TASK_SIZE)
  return -ENOMEM;

 if (flags & MAP_FIXED)
  return addr;

 if (addr) {
  addr = PAGE_ALIGN(addr);
  vma = find_vma(mm, addr);
  if (TASK_SIZE - len >= addr &&
      (!vma || addr + len <= vma->vm_start) &&
      (addr >= mmap_min_addr))
   return addr;
 }

 if (len > mm->cached_hole_size || unmap_factor) {
         start_addr = addr = mm->free_area_cache;
 } else {
         start_addr = addr = TASK_UNMAPPED_BASE;
         mm->cached_hole_size = 0;
 }

full_search:
 for (vma = find_vma(mm, addr); ; vma = vma->vm_next) {

  if (TASK_SIZE - len < addr) {




   if (start_addr != TASK_UNMAPPED_BASE) {
    addr = TASK_UNMAPPED_BASE;
           start_addr = addr;
    if (likely(!unmap_factor))
     mm->cached_hole_size = 0;
    goto full_search;
   }
   return -ENOMEM;
  }
  if ((!vma || addr + len <= vma->vm_start) &&
      (addr >= mmap_min_addr)) {



   mm->free_area_cache = addr + len;
   return addr;
  }
  if (!unmap_factor &&
    addr + mm->cached_hole_size < vma->vm_start)
          mm->cached_hole_size = vma->vm_start - addr;

  addr = vma->vm_end;
 }
}
