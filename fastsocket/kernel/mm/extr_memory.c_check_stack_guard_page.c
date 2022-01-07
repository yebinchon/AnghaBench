
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_start; unsigned long vm_end; struct vm_area_struct* vm_next; struct vm_area_struct* vm_prev; } ;


 int ENOMEM ;
 unsigned long PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 int VM_GROWSDOWN ;
 int VM_GROWSUP ;
 int expand_stack (struct vm_area_struct*,scalar_t__) ;
 int expand_upwards (struct vm_area_struct*,scalar_t__) ;

__attribute__((used)) static inline int check_stack_guard_page(struct vm_area_struct *vma, unsigned long address)
{
 address &= PAGE_MASK;
 if ((vma->vm_flags & VM_GROWSDOWN) && address == vma->vm_start) {
  struct vm_area_struct *prev = vma->vm_prev;







  if (prev && prev->vm_end == address)
   return prev->vm_flags & VM_GROWSDOWN ? 0 : -ENOMEM;

  expand_stack(vma, address - PAGE_SIZE);
 }
 if ((vma->vm_flags & VM_GROWSUP) && address + PAGE_SIZE == vma->vm_end) {
  struct vm_area_struct *next = vma->vm_next;


  if (next && next->vm_start == address + PAGE_SIZE)
   return next->vm_flags & VM_GROWSUP ? 0 : -ENOMEM;

  expand_upwards(vma, address + PAGE_SIZE);
 }
 return 0;
}
