
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct TYPE_5__ {int tree_lock; } ;


 int __delete_from_swap_cache (struct page*) ;
 int page_cache_release (struct page*) ;
 int page_private (struct page*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int swapcache_free (TYPE_1__,struct page*) ;
 TYPE_2__ swapper_space ;

void delete_from_swap_cache(struct page *page)
{
 swp_entry_t entry;

 entry.val = page_private(page);

 spin_lock_irq(&swapper_space.tree_lock);
 __delete_from_swap_cache(page);
 spin_unlock_irq(&swapper_space.tree_lock);

 swapcache_free(entry, page);
 page_cache_release(page);
}
