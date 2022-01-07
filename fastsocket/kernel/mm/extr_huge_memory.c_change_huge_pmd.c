
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; int anon_vma; } ;
struct mm_struct {int page_table_lock; } ;
typedef int pmd_t ;
typedef int pgprot_t ;


 scalar_t__ likely (int ) ;
 int pmd_modify (int ,int ) ;
 int pmd_trans_huge (int ) ;
 int pmd_trans_splitting (int ) ;
 int pmdp_get_and_clear (struct mm_struct*,unsigned long,int *) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int wait_split_huge_page (int ,int *) ;

int change_huge_pmd(struct vm_area_struct *vma, pmd_t *pmd,
  unsigned long addr, pgprot_t newprot)
{
 struct mm_struct *mm = vma->vm_mm;
 int ret = 0;

 spin_lock(&mm->page_table_lock);
 if (likely(pmd_trans_huge(*pmd))) {
  if (unlikely(pmd_trans_splitting(*pmd))) {
   spin_unlock(&mm->page_table_lock);
   wait_split_huge_page(vma->anon_vma, pmd);
  } else {
   pmd_t entry;

   entry = pmdp_get_and_clear(mm, addr, pmd);
   entry = pmd_modify(entry, newprot);
   set_pmd_at(mm, addr, pmd, entry);
   spin_unlock(&vma->vm_mm->page_table_lock);
   ret = 1;
  }
 } else
  spin_unlock(&vma->vm_mm->page_table_lock);

 return ret;
}
