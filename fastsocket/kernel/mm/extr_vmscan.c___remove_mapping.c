
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {int tree_lock; int a_ops; struct inode* host; } ;
struct TYPE_5__ {void (* freepage ) (struct page*) ;} ;


 int BUG_ON (int) ;
 TYPE_3__* EXT_AOPS (int ) ;
 scalar_t__ IS_AOP_EXT (struct inode*) ;
 int PageDirty (struct page*) ;
 int PageLocked (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 int __delete_from_swap_cache (struct page*) ;
 int __remove_from_page_cache (struct page*) ;
 int mem_cgroup_uncharge_cache_page (struct page*) ;
 int page_freeze_refs (struct page*,int) ;
 struct address_space* page_mapping (struct page*) ;
 int page_private (struct page*) ;
 int page_unfreeze_refs (struct page*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int swapcache_free (TYPE_1__,struct page*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int __remove_mapping(struct address_space *mapping, struct page *page)
{
 struct inode *inode = mapping->host;

 BUG_ON(!PageLocked(page));
 BUG_ON(mapping != page_mapping(page));

 spin_lock_irq(&mapping->tree_lock);
 if (!page_freeze_refs(page, 2))
  goto cannot_free;

 if (unlikely(PageDirty(page))) {
  page_unfreeze_refs(page, 2);
  goto cannot_free;
 }

 if (PageSwapCache(page)) {
  swp_entry_t swap = { .val = page_private(page) };
  __delete_from_swap_cache(page);
  spin_unlock_irq(&mapping->tree_lock);
  swapcache_free(swap, page);
 } else {
  void (*freepage)(struct page *) = ((void*)0);

  if (IS_AOP_EXT(inode))
   freepage = EXT_AOPS(mapping->a_ops)->freepage;

  __remove_from_page_cache(page);
  spin_unlock_irq(&mapping->tree_lock);
  mem_cgroup_uncharge_cache_page(page);

  if (freepage != ((void*)0))
   freepage(page);
 }

 return 1;

cannot_free:
 spin_unlock_irq(&mapping->tree_lock);
 return 0;
}
