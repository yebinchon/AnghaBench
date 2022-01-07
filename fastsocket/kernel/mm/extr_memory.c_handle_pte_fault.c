
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {TYPE_1__* vm_ops; } ;
struct mm_struct {int dummy; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;
struct TYPE_2__ {int fault; } ;


 unsigned int FAULT_FLAG_WRITE ;
 int do_anonymous_page (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int *,unsigned int) ;
 int do_linear_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int *,unsigned int,int ) ;
 int do_nonlinear_fault (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int *,unsigned int,int ) ;
 int do_swap_page (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int *,unsigned int,int ) ;
 int do_wp_page (struct mm_struct*,struct vm_area_struct*,unsigned long,int *,int *,int *,int ) ;
 int flush_tlb_page (struct vm_area_struct*,unsigned long) ;
 scalar_t__ likely (int ) ;
 scalar_t__ pte_file (int ) ;
 int * pte_lockptr (struct mm_struct*,int *) ;
 int pte_mkdirty (int ) ;
 int pte_mkyoung (int ) ;
 scalar_t__ pte_none (int ) ;
 int pte_present (int ) ;
 int pte_same (int ,int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int pte_write (int ) ;
 scalar_t__ ptep_set_access_flags (struct vm_area_struct*,unsigned long,int *,int ,unsigned int) ;
 int spin_lock (int *) ;
 scalar_t__ unlikely (int) ;
 int update_mmu_cache (struct vm_area_struct*,unsigned long,int ) ;

int handle_pte_fault(struct mm_struct *mm,
       struct vm_area_struct *vma, unsigned long address,
       pte_t *pte, pmd_t *pmd, unsigned int flags)
{
 pte_t entry;
 spinlock_t *ptl;

 entry = *pte;
 if (!pte_present(entry)) {
  if (pte_none(entry)) {
   if (vma->vm_ops) {
    if (likely(vma->vm_ops->fault))
     return do_linear_fault(mm, vma, address,
      pte, pmd, flags, entry);
   }
   return do_anonymous_page(mm, vma, address,
       pte, pmd, flags);
  }
  if (pte_file(entry))
   return do_nonlinear_fault(mm, vma, address,
     pte, pmd, flags, entry);
  return do_swap_page(mm, vma, address,
     pte, pmd, flags, entry);
 }

 ptl = pte_lockptr(mm, pmd);
 spin_lock(ptl);
 if (unlikely(!pte_same(*pte, entry)))
  goto unlock;
 if (flags & FAULT_FLAG_WRITE) {
  if (!pte_write(entry))
   return do_wp_page(mm, vma, address,
     pte, pmd, ptl, entry);
  entry = pte_mkdirty(entry);
 }
 entry = pte_mkyoung(entry);
 if (ptep_set_access_flags(vma, address, pte, entry, flags & FAULT_FLAG_WRITE)) {
  update_mmu_cache(vma, address, entry);
 } else {






  if (flags & FAULT_FLAG_WRITE)
   flush_tlb_page(vma, address);
 }
unlock:
 pte_unmap_unlock(pte, ptl);
 return 0;
}
