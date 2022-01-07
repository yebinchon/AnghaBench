
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct TYPE_5__ {int tree_lock; int page_tree; } ;


 int ClearPageSwapCache (struct page*) ;
 int EEXIST ;
 int INC_CACHE_INFO (int ) ;
 int NR_FILE_PAGES ;
 int PageLocked (struct page*) ;
 int PageSwapBacked (struct page*) ;
 int PageSwapCache (struct page*) ;
 int SetPageSwapCache (struct page*) ;
 int VM_BUG_ON (int) ;
 int __inc_zone_page_state (struct page*,int ) ;
 int add_total ;
 scalar_t__ likely (int) ;
 int page_cache_get (struct page*) ;
 int page_cache_release (struct page*) ;
 int radix_tree_insert (int *,unsigned long,struct page*) ;
 int set_page_private (struct page*,unsigned long) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 TYPE_2__ swapper_space ;
 int total_swapcache_pages ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __add_to_swap_cache(struct page *page, swp_entry_t entry)
{
 int error;

 VM_BUG_ON(!PageLocked(page));
 VM_BUG_ON(PageSwapCache(page));
 VM_BUG_ON(!PageSwapBacked(page));

 page_cache_get(page);
 SetPageSwapCache(page);
 set_page_private(page, entry.val);

 spin_lock_irq(&swapper_space.tree_lock);
 error = radix_tree_insert(&swapper_space.page_tree, entry.val, page);
 if (likely(!error)) {
  total_swapcache_pages++;
  __inc_zone_page_state(page, NR_FILE_PAGES);
  INC_CACHE_INFO(add_total);
 }
 spin_unlock_irq(&swapper_space.tree_lock);

 if (unlikely(error)) {





  VM_BUG_ON(error == -EEXIST);
  set_page_private(page, 0UL);
  ClearPageSwapCache(page);
  page_cache_release(page);
 }

 return error;
}
