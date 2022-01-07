
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_end; int vm_rb; struct vm_area_struct* vm_prev; struct vm_area_struct* vm_next; } ;
struct mm_struct {struct vm_area_struct* mmap_cache; int mm_rb; } ;


 int VM_EXEC ;
 int arch_remove_exec_range (struct mm_struct*,int ) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static inline void
__vma_unlink(struct mm_struct *mm, struct vm_area_struct *vma,
  struct vm_area_struct *prev)
{
 struct vm_area_struct *next = vma->vm_next;

 prev->vm_next = next;
 if (next)
  next->vm_prev = prev;
 rb_erase(&vma->vm_rb, &mm->mm_rb);
 if (mm->mmap_cache == vma)
  mm->mmap_cache = prev;
 if (vma->vm_flags & VM_EXEC)
  arch_remove_exec_range(mm, vma->vm_end);
}
