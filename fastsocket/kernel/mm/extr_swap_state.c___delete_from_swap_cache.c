
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_2__ {int page_tree; } ;


 int ClearPageSwapCache (struct page*) ;
 int INC_CACHE_INFO (int ) ;
 int NR_FILE_PAGES ;
 int PageLocked (struct page*) ;
 int PageSwapCache (struct page*) ;
 int PageWriteback (struct page*) ;
 int VM_BUG_ON (int) ;
 int __dec_zone_page_state (struct page*,int ) ;
 int del_total ;
 int page_private (struct page*) ;
 int radix_tree_delete (int *,int ) ;
 int set_page_private (struct page*,int ) ;
 TYPE_1__ swapper_space ;
 int total_swapcache_pages ;

void __delete_from_swap_cache(struct page *page)
{
 VM_BUG_ON(!PageLocked(page));
 VM_BUG_ON(!PageSwapCache(page));
 VM_BUG_ON(PageWriteback(page));

 radix_tree_delete(&swapper_space.page_tree, page_private(page));
 set_page_private(page, 0);
 ClearPageSwapCache(page);
 total_swapcache_pages--;
 __dec_zone_page_state(page, NR_FILE_PAGES);
 INC_CACHE_INFO(del_total);
}
