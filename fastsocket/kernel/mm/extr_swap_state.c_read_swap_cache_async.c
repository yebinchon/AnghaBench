
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int ClearPageSwapBacked (struct page*) ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SetPageSwapBacked (struct page*) ;
 int __add_to_swap_cache (struct page*,TYPE_1__) ;
 int __clear_page_locked (struct page*) ;
 int __set_page_locked (struct page*) ;
 struct page* alloc_page_vma (int,struct vm_area_struct*,unsigned long) ;
 int cond_resched () ;
 struct page* find_get_page (int *,int ) ;
 scalar_t__ likely (int) ;
 int lru_cache_add_anon (struct page*) ;
 int page_cache_release (struct page*) ;
 int radix_tree_preload (int) ;
 int radix_tree_preload_end () ;
 int swap_readpage (struct page*) ;
 int swapcache_free (TYPE_1__,int *) ;
 int swapcache_prepare (TYPE_1__) ;
 int swapper_space ;

struct page *read_swap_cache_async(swp_entry_t entry, gfp_t gfp_mask,
   struct vm_area_struct *vma, unsigned long addr)
{
 struct page *found_page, *new_page = ((void*)0);
 int err;

 do {





  found_page = find_get_page(&swapper_space, entry.val);
  if (found_page)
   break;




  if (!new_page) {
   new_page = alloc_page_vma(gfp_mask, vma, addr);
   if (!new_page)
    break;
  }




  err = radix_tree_preload(gfp_mask & GFP_KERNEL);
  if (err)
   break;




  err = swapcache_prepare(entry);
  if (err == -EEXIST) {
   radix_tree_preload_end();
   cond_resched();
   continue;
  }
  if (err) {
   radix_tree_preload_end();
   break;
  }


  __set_page_locked(new_page);
  SetPageSwapBacked(new_page);
  err = __add_to_swap_cache(new_page, entry);
  if (likely(!err)) {
   radix_tree_preload_end();



   lru_cache_add_anon(new_page);
   swap_readpage(new_page);
   return new_page;
  }
  radix_tree_preload_end();
  ClearPageSwapBacked(new_page);
  __clear_page_locked(new_page);




  swapcache_free(entry, ((void*)0));
 } while (err != -ENOMEM);

 if (new_page)
  page_cache_release(new_page);
 return found_page;
}
