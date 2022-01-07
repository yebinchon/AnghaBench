
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {struct address_space* mapping; int index; } ;
struct address_space {int tree_lock; int nrpages; int page_tree; } ;
typedef int pgoff_t ;
typedef int gfp_t ;
struct TYPE_2__ {int mm; } ;


 int GFP_RECLAIM_MASK ;
 int NR_FILE_PAGES ;
 int PageLocked (struct page*) ;
 int PageSwapBacked (struct page*) ;
 int VM_BUG_ON (int) ;
 int __GFP_HIGHMEM ;
 int __inc_zone_page_state (struct page*,int ) ;
 TYPE_1__* current ;
 scalar_t__ likely (int) ;
 int mem_cgroup_cache_charge (struct page*,int ,int) ;
 int mem_cgroup_uncharge_cache_page (struct page*) ;
 int page_cache_get (struct page*) ;
 int page_cache_release (struct page*) ;
 int radix_tree_insert (int *,int ,struct page*) ;
 int radix_tree_preload (int) ;
 int radix_tree_preload_end () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

int add_to_page_cache_locked(struct page *page, struct address_space *mapping,
  pgoff_t offset, gfp_t gfp_mask)
{
 int error;

 VM_BUG_ON(!PageLocked(page));
 VM_BUG_ON(PageSwapBacked(page));

 error = mem_cgroup_cache_charge(page, current->mm,
     gfp_mask & GFP_RECLAIM_MASK);
 if (error)
  goto out;

 error = radix_tree_preload(gfp_mask & ~__GFP_HIGHMEM);
 if (error == 0) {
  page_cache_get(page);
  page->mapping = mapping;
  page->index = offset;

  spin_lock_irq(&mapping->tree_lock);
  error = radix_tree_insert(&mapping->page_tree, offset, page);
  if (likely(!error)) {
   mapping->nrpages++;
   __inc_zone_page_state(page, NR_FILE_PAGES);
   spin_unlock_irq(&mapping->tree_lock);
  } else {
   page->mapping = ((void*)0);

   spin_unlock_irq(&mapping->tree_lock);
   mem_cgroup_uncharge_cache_page(page);
   page_cache_release(page);
  }
  radix_tree_preload_end();
 } else
  mem_cgroup_uncharge_cache_page(page);
out:
 return error;
}
