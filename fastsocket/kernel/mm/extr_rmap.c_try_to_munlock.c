
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageAnon (struct page*) ;
 int PageKsm (struct page*) ;
 scalar_t__ PageLRU (struct page*) ;
 int PageLocked (struct page*) ;
 int TTU_MUNLOCK ;
 int VM_BUG_ON (int) ;
 int try_to_unmap_anon (struct page*,int ) ;
 int try_to_unmap_file (struct page*,int ) ;
 int try_to_unmap_ksm (struct page*,int ) ;
 scalar_t__ unlikely (int ) ;

int try_to_munlock(struct page *page)
{
 VM_BUG_ON(!PageLocked(page) || PageLRU(page));

 if (unlikely(PageKsm(page)))
  return try_to_unmap_ksm(page, TTU_MUNLOCK);
 else if (PageAnon(page))
  return try_to_unmap_anon(page, TTU_MUNLOCK);
 else
  return try_to_unmap_file(page, TTU_MUNLOCK);
}
