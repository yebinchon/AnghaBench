
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;


 int PageLocked (struct page*) ;
 int PageTransHuge (struct page*) ;
 int PageUptodate (struct page*) ;
 int SetPageDirty (struct page*) ;
 int VM_BUG_ON (int) ;
 int __GFP_HIGH ;
 int __GFP_NOMEMALLOC ;
 int __GFP_NOWARN ;
 int add_to_swap_cache (struct page*,TYPE_1__,int) ;
 TYPE_1__ get_swap_page () ;
 int split_huge_page (struct page*) ;
 int swapcache_free (TYPE_1__,int *) ;
 scalar_t__ unlikely (int ) ;

int add_to_swap(struct page *page)
{
 swp_entry_t entry;
 int err;

 VM_BUG_ON(!PageLocked(page));
 VM_BUG_ON(!PageUptodate(page));

 entry = get_swap_page();
 if (!entry.val)
  return 0;

 if (unlikely(PageTransHuge(page)))
  if (unlikely(split_huge_page(page))) {
   swapcache_free(entry, ((void*)0));
   return 0;
  }
 err = add_to_swap_cache(page, entry,
   __GFP_HIGH|__GFP_NOMEMALLOC|__GFP_NOWARN);

 if (!err) {
  SetPageDirty(page);
  return 1;
 } else {




  swapcache_free(entry, ((void*)0));
  return 0;
 }
}
