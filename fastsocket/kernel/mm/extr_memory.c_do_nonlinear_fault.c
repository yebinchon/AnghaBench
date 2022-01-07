
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgoff_t ;


 unsigned int FAULT_FLAG_NONLINEAR ;
 int VM_FAULT_SIGBUS ;
 int VM_NONLINEAR ;
 int __do_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int ,unsigned int,int ) ;
 int print_bad_pte (struct vm_area_struct*,unsigned long,int ,int *) ;
 int pte_to_pgoff (int ) ;
 int pte_unmap_same (struct mm_struct*,int *,int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int do_nonlinear_fault(struct mm_struct *mm, struct vm_area_struct *vma,
  unsigned long address, pte_t *page_table, pmd_t *pmd,
  unsigned int flags, pte_t orig_pte)
{
 pgoff_t pgoff;

 flags |= FAULT_FLAG_NONLINEAR;

 if (!pte_unmap_same(mm, pmd, page_table, orig_pte))
  return 0;

 if (unlikely(!(vma->vm_flags & VM_NONLINEAR))) {



  print_bad_pte(vma, address, orig_pte, ((void*)0));
  return VM_FAULT_SIGBUS;
 }

 pgoff = pte_to_pgoff(orig_pte);
 return __do_fault(mm, vma, address, pmd, pgoff, flags, orig_pte);
}
