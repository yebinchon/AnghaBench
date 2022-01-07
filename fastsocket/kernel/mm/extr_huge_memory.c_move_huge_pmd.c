
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int anon_vma; struct mm_struct* vm_mm; } ;
struct mm_struct {int page_table_lock; } ;
typedef int pmd_t ;


 unsigned long HPAGE_PMD_MASK ;
 unsigned long HPAGE_PMD_SIZE ;
 int VM_BUG_ON (int) ;
 int WARN_ON (int) ;
 scalar_t__ likely (int) ;
 int pmd_none (int ) ;
 int pmd_trans_huge (int ) ;
 scalar_t__ pmd_trans_splitting (int ) ;
 int pmdp_get_and_clear (struct mm_struct*,unsigned long,int *) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_split_huge_page (int ,int *) ;

int move_huge_pmd(struct vm_area_struct *vma, unsigned long old_addr,
    unsigned long new_addr, unsigned long old_end,
    pmd_t *old_pmd, pmd_t *new_pmd)
{
 int ret = 0;
 pmd_t pmd;

 struct mm_struct *mm = vma->vm_mm;

 if ((old_addr & ~HPAGE_PMD_MASK) ||
     (new_addr & ~HPAGE_PMD_MASK) ||
     (old_addr + HPAGE_PMD_SIZE) > old_end)
  goto out;





 if (!pmd_none(*new_pmd)) {
  WARN_ON(1);
  VM_BUG_ON(pmd_trans_huge(*new_pmd));
  goto out;
 }

 spin_lock(&mm->page_table_lock);
 if (likely(pmd_trans_huge(*old_pmd))) {
  if (pmd_trans_splitting(*old_pmd)) {
   spin_unlock(&mm->page_table_lock);
   wait_split_huge_page(vma->anon_vma, old_pmd);
   ret = -1;
  } else {
   pmd = pmdp_get_and_clear(mm, old_addr, old_pmd);
   VM_BUG_ON(!pmd_none(*new_pmd));
   set_pmd_at(mm, new_addr, new_pmd, pmd);
   spin_unlock(&mm->page_table_lock);
   ret = 1;
  }
 } else
  spin_unlock(&mm->page_table_lock);

out:
 return ret;
}
