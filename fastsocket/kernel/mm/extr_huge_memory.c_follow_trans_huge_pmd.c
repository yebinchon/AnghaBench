
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
typedef int pmd_t ;


 unsigned int FOLL_GET ;
 unsigned int FOLL_TOUCH ;
 unsigned int FOLL_WRITE ;
 unsigned long HPAGE_PMD_MASK ;
 unsigned long PAGE_SHIFT ;
 int PageCompound (struct page*) ;
 int PageHead (struct page*) ;
 int VM_BUG_ON (int) ;
 int get_page_foll (struct page*) ;
 int pmd_mkdirty (int ) ;
 int pmd_mkyoung (int ) ;
 struct page* pmd_page (int ) ;
 int pmd_write (int ) ;
 int set_pmd_at (struct mm_struct*,unsigned long,int *,int ) ;
 int spin_can_lock (int *) ;

struct page *follow_trans_huge_pmd(struct mm_struct *mm,
       unsigned long addr,
       pmd_t *pmd,
       unsigned int flags)
{
 struct page *page = ((void*)0);

 VM_BUG_ON(spin_can_lock(&mm->page_table_lock));

 if (flags & FOLL_WRITE && !pmd_write(*pmd))
  goto out;

 page = pmd_page(*pmd);
 VM_BUG_ON(!PageHead(page));
 if (flags & FOLL_TOUCH) {
  pmd_t _pmd;
  _pmd = pmd_mkyoung(pmd_mkdirty(*pmd));
  set_pmd_at(mm, addr & HPAGE_PMD_MASK, pmd, _pmd);
 }
 page += (addr & ~HPAGE_PMD_MASK) >> PAGE_SHIFT;
 VM_BUG_ON(!PageCompound(page));
 if (flags & FOLL_GET)
  get_page_foll(page);

out:
 return page;
}
