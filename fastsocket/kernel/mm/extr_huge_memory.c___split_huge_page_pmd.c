
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mm_struct {int page_table_lock; } ;
typedef int pmd_t ;


 int BUG_ON (int ) ;
 int VM_BUG_ON (int) ;
 int get_page (struct page*) ;
 int page_count (struct page*) ;
 struct page* pmd_page (int ) ;
 int pmd_trans_huge (int ) ;
 int put_page (struct page*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int split_huge_page (struct page*) ;
 scalar_t__ unlikely (int) ;

void __split_huge_page_pmd(struct mm_struct *mm, pmd_t *pmd)
{
 struct page *page;

 spin_lock(&mm->page_table_lock);
 if (unlikely(!pmd_trans_huge(*pmd))) {
  spin_unlock(&mm->page_table_lock);
  return;
 }
 page = pmd_page(*pmd);
 VM_BUG_ON(!page_count(page));
 get_page(page);
 spin_unlock(&mm->page_table_lock);

 split_huge_page(page);

 put_page(page);
 BUG_ON(pmd_trans_huge(*pmd));
}
