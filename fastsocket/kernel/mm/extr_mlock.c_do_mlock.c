
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {unsigned long vm_start; unsigned int vm_flags; unsigned long vm_end; struct vm_area_struct* vm_next; } ;
struct TYPE_2__ {int mm; } ;


 int EINVAL ;
 int ENOMEM ;
 size_t PAGE_ALIGN (size_t) ;
 unsigned int VM_LOCKED ;
 TYPE_1__* current ;
 struct vm_area_struct* find_vma_prev (int ,unsigned long,struct vm_area_struct**) ;
 int mlock_fixup (struct vm_area_struct*,struct vm_area_struct**,unsigned long,unsigned long,unsigned int) ;

__attribute__((used)) static int do_mlock(unsigned long start, size_t len, int on)
{
 unsigned long nstart, end, tmp;
 struct vm_area_struct * vma, * prev;
 int error;

 len = PAGE_ALIGN(len);
 end = start + len;
 if (end < start)
  return -EINVAL;
 if (end == start)
  return 0;
 vma = find_vma_prev(current->mm, start, &prev);
 if (!vma || vma->vm_start > start)
  return -ENOMEM;

 if (start > vma->vm_start)
  prev = vma;

 for (nstart = start ; ; ) {
  unsigned int newflags;



  newflags = vma->vm_flags | VM_LOCKED;
  if (!on)
   newflags &= ~VM_LOCKED;

  tmp = vma->vm_end;
  if (tmp > end)
   tmp = end;
  error = mlock_fixup(vma, &prev, nstart, tmp, newflags);
  if (error)
   break;
  nstart = tmp;
  if (nstart < prev->vm_end)
   nstart = prev->vm_end;
  if (nstart >= end)
   break;

  vma = prev->vm_next;
  if (!vma || vma->vm_start != nstart) {
   error = -ENOMEM;
   break;
  }
 }
 return error;
}
