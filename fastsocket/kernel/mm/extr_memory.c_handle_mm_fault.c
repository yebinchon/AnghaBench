
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_ops; } ;
struct mm_struct {int dummy; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned int FAULT_FLAG_WRITE ;
 int PGFAULT ;
 int TASK_RUNNING ;
 int VM_FAULT_OOM ;
 int __pte_alloc (struct mm_struct*,struct vm_area_struct*,int *,unsigned long) ;
 int __set_current_state (int ) ;
 int barrier () ;
 int count_vm_event (int ) ;
 int do_huge_pmd_anonymous_page (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,unsigned int) ;
 int do_huge_pmd_wp_page (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int ) ;
 int handle_pte_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int *,unsigned int) ;
 int hugetlb_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,unsigned int) ;
 int is_vm_hugetlb_page (struct vm_area_struct*) ;
 int * pgd_offset (struct mm_struct*,unsigned long) ;
 int * pmd_alloc (struct mm_struct*,int *,unsigned long) ;
 int pmd_none (int ) ;
 int pmd_trans_huge (int ) ;
 int pmd_trans_splitting (int ) ;
 int pmd_write (int ) ;
 int * pte_offset_map (int *,unsigned long) ;
 int * pud_alloc (struct mm_struct*,int *,unsigned long) ;
 scalar_t__ transparent_hugepage_enabled (struct vm_area_struct*) ;
 scalar_t__ unlikely (int) ;

int handle_mm_fault(struct mm_struct *mm, struct vm_area_struct *vma,
  unsigned long address, unsigned int flags)
{
 pgd_t *pgd;
 pud_t *pud;
 pmd_t *pmd;
 pte_t *pte;

 __set_current_state(TASK_RUNNING);

 count_vm_event(PGFAULT);

 if (unlikely(is_vm_hugetlb_page(vma)))
  return hugetlb_fault(mm, vma, address, flags);

retry:
 pgd = pgd_offset(mm, address);
 pud = pud_alloc(mm, pgd, address);
 if (!pud)
  return VM_FAULT_OOM;
 pmd = pmd_alloc(mm, pud, address);
 if (!pmd)
  return VM_FAULT_OOM;
 if (pmd_none(*pmd) && transparent_hugepage_enabled(vma)) {
  if (!vma->vm_ops)
   return do_huge_pmd_anonymous_page(mm, vma, address,
         pmd, flags);
 } else {
  pmd_t orig_pmd = *pmd;
  int ret;

  barrier();
  if (pmd_trans_huge(orig_pmd)) {
   if (flags & FAULT_FLAG_WRITE &&
       !pmd_write(orig_pmd) &&
       !pmd_trans_splitting(orig_pmd)) {
    ret = do_huge_pmd_wp_page(mm, vma, address, pmd,
         orig_pmd);





    if (unlikely(ret & VM_FAULT_OOM))
     goto retry;
    return ret;
   }
   return 0;
  }
 }






 if (unlikely(pmd_none(*pmd)) &&
     unlikely(__pte_alloc(mm, vma, pmd, address)))
  return VM_FAULT_OOM;

 if (unlikely(pmd_trans_huge(*pmd)))
  return 0;






 pte = pte_offset_map(pmd, address);

 return handle_pte_fault(mm, vma, address, pte, pmd, flags);
}
