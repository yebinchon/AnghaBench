
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
typedef int pmd_t ;


 int PAGE_CHECK_ADDRESS_PMD_NOTSPLITTING_FLAG ;
 int * page_check_address_pmd (struct page*,struct mm_struct*,unsigned long,int ) ;
 int pmdp_splitting_flush_notify (struct vm_area_struct*,unsigned long,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __split_huge_page_splitting(struct page *page,
           struct vm_area_struct *vma,
           unsigned long address)
{
 struct mm_struct *mm = vma->vm_mm;
 pmd_t *pmd;
 int ret = 0;

 spin_lock(&mm->page_table_lock);
 pmd = page_check_address_pmd(page, mm, address,
         PAGE_CHECK_ADDRESS_PMD_NOTSPLITTING_FLAG);
 if (pmd) {







  pmdp_splitting_flush_notify(vma, address, pmd);
  ret = 1;
 }
 spin_unlock(&mm->page_table_lock);

 return ret;
}
