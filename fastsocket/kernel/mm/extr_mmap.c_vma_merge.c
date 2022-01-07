
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; unsigned long vm_pgoff; int vm_flags; int anon_vma; struct vm_area_struct* vm_next; } ;
struct mm_struct {struct vm_area_struct* mmap; } ;
struct mempolicy {int dummy; } ;
struct file {int dummy; } ;
struct anon_vma {int dummy; } ;
typedef unsigned long pgoff_t ;


 unsigned long PAGE_SHIFT ;
 int VM_EXEC ;
 unsigned long VM_SPECIAL ;
 int arch_add_exec_range (struct mm_struct*,unsigned long) ;
 scalar_t__ can_vma_merge_after (struct vm_area_struct*,unsigned long,struct anon_vma*,struct file*,unsigned long) ;
 scalar_t__ can_vma_merge_before (struct vm_area_struct*,unsigned long,struct anon_vma*,struct file*,unsigned long) ;
 scalar_t__ is_mergeable_anon_vma (int ,int ,int *) ;
 int khugepaged_enter_vma_merge (struct vm_area_struct*) ;
 scalar_t__ mpol_equal (struct mempolicy*,struct mempolicy*) ;
 int vma_adjust (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int *) ;
 struct mempolicy* vma_policy (struct vm_area_struct*) ;

struct vm_area_struct *vma_merge(struct mm_struct *mm,
   struct vm_area_struct *prev, unsigned long addr,
   unsigned long end, unsigned long vm_flags,
        struct anon_vma *anon_vma, struct file *file,
   pgoff_t pgoff, struct mempolicy *policy)
{
 pgoff_t pglen = (end - addr) >> PAGE_SHIFT;
 struct vm_area_struct *area, *next;
 int err;





 if (vm_flags & VM_SPECIAL)
  return ((void*)0);

 if (prev)
  next = prev->vm_next;
 else
  next = mm->mmap;
 area = next;
 if (next && next->vm_end == end)
  next = next->vm_next;




 if (prev && prev->vm_end == addr &&
     mpol_equal(vma_policy(prev), policy) &&
   can_vma_merge_after(prev, vm_flags,
      anon_vma, file, pgoff)) {



  if (next && end == next->vm_start &&
    mpol_equal(policy, vma_policy(next)) &&
    can_vma_merge_before(next, vm_flags,
     anon_vma, file, pgoff+pglen) &&
    is_mergeable_anon_vma(prev->anon_vma,
            next->anon_vma, ((void*)0))) {

   err = vma_adjust(prev, prev->vm_start,
    next->vm_end, prev->vm_pgoff, ((void*)0));
  } else
   err = vma_adjust(prev, prev->vm_start,
    end, prev->vm_pgoff, ((void*)0));
  if (err)
   return ((void*)0);
  if (prev->vm_flags & VM_EXEC)
   arch_add_exec_range(mm, prev->vm_end);
  khugepaged_enter_vma_merge(prev);
  return prev;
 }




 if (next && end == next->vm_start &&
    mpol_equal(policy, vma_policy(next)) &&
   can_vma_merge_before(next, vm_flags,
     anon_vma, file, pgoff+pglen)) {
  if (prev && addr < prev->vm_end)
   err = vma_adjust(prev, prev->vm_start,
    addr, prev->vm_pgoff, ((void*)0));
  else
   err = vma_adjust(area, addr, next->vm_end,
    next->vm_pgoff - pglen, ((void*)0));
  if (err)
   return ((void*)0);
  khugepaged_enter_vma_merge(area);
  return area;
 }

 return ((void*)0);
}
