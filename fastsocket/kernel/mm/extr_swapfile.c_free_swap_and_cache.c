
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct swap_info_struct {int dummy; } ;
struct page {int dummy; } ;


 scalar_t__ PageSwapCache (struct page*) ;
 int PageWriteback (struct page*) ;
 scalar_t__ SWAP_HAS_CACHE ;
 int SetPageDirty (struct page*) ;
 int delete_from_swap_cache (struct page*) ;
 struct page* find_get_page (int *,int ) ;
 scalar_t__ non_swap_entry (TYPE_1__) ;
 int page_cache_release (struct page*) ;
 int page_mapped (struct page*) ;
 int spin_unlock (int *) ;
 scalar_t__ swap_entry_free (struct swap_info_struct*,TYPE_1__,int) ;
 struct swap_info_struct* swap_info_get (TYPE_1__) ;
 int swap_lock ;
 int swapper_space ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;
 scalar_t__ vm_swap_full () ;

int free_swap_and_cache(swp_entry_t entry)
{
 struct swap_info_struct *p;
 struct page *page = ((void*)0);

 if (non_swap_entry(entry))
  return 1;

 p = swap_info_get(entry);
 if (p) {
  if (swap_entry_free(p, entry, 1) == SWAP_HAS_CACHE) {
   page = find_get_page(&swapper_space, entry.val);
   if (page && !trylock_page(page)) {
    page_cache_release(page);
    page = ((void*)0);
   }
  }
  spin_unlock(&swap_lock);
 }
 if (page) {




  if (PageSwapCache(page) && !PageWriteback(page) &&
    (!page_mapped(page) || vm_swap_full())) {
   delete_from_swap_cache(page);
   SetPageDirty(page);
  }
  unlock_page(page);
  page_cache_release(page);
 }
 return p != ((void*)0);
}
