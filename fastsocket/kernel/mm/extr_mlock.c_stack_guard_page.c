
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; unsigned long vm_start; int vm_prev; } ;


 int VM_GROWSDOWN ;
 int vma_stack_continue (int ,unsigned long) ;

__attribute__((used)) static inline int stack_guard_page(struct vm_area_struct *vma, unsigned long addr)
{
 return (vma->vm_flags & VM_GROWSDOWN) &&
  (vma->vm_start == addr) &&
  !vma_stack_continue(vma->vm_prev, addr);
}
