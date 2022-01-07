
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum ttu_flags { ____Placeholder_ttu_flags } ttu_flags ;


 int BUG_ON (int) ;
 scalar_t__ PageAnon (struct page*) ;
 int PageHuge (struct page*) ;
 int PageKsm (struct page*) ;
 int PageLocked (struct page*) ;
 scalar_t__ PageTransHuge (struct page*) ;
 int SWAP_MLOCK ;
 int SWAP_SUCCESS ;
 int VM_BUG_ON (int) ;
 int page_mapped (struct page*) ;
 int try_to_unmap_anon (struct page*,int) ;
 int try_to_unmap_file (struct page*,int) ;
 int try_to_unmap_ksm (struct page*,int) ;
 scalar_t__ unlikely (int ) ;

int try_to_unmap(struct page *page, enum ttu_flags flags)
{
 int ret;

 BUG_ON(!PageLocked(page));
 VM_BUG_ON(!PageHuge(page) && PageTransHuge(page));

 if (unlikely(PageKsm(page)))
  ret = try_to_unmap_ksm(page, flags);
 else if (PageAnon(page))
  ret = try_to_unmap_anon(page, flags);
 else
  ret = try_to_unmap_file(page, flags);
 if (ret != SWAP_MLOCK && !page_mapped(page))
  ret = SWAP_SUCCESS;
 return ret;
}
