
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct anon_vma {int dummy; } ;


 int BUG_ON (int) ;
 int PageAnon (struct page*) ;
 int PageCompound (struct page*) ;
 int PageSwapBacked (struct page*) ;
 int THP_SPLIT ;
 int __split_huge_page (struct page*,struct anon_vma*) ;
 int count_vm_event (int ) ;
 struct anon_vma* page_lock_anon_vma (struct page*) ;
 int page_unlock_anon_vma (struct anon_vma*) ;

int split_huge_page(struct page *page)
{
 struct anon_vma *anon_vma;
 int ret = 1;

 BUG_ON(!PageAnon(page));
 anon_vma = page_lock_anon_vma(page);
 if (!anon_vma)
  goto out;
 ret = 0;
 if (!PageCompound(page))
  goto out_unlock;

 BUG_ON(!PageSwapBacked(page));
 __split_huge_page(page, anon_vma);
 count_vm_event(THP_SPLIT);

 BUG_ON(PageCompound(page));
out_unlock:
 page_unlock_anon_vma(anon_vma);
out:
 return ret;
}
