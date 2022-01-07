
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 int GFP_NOFS ;
 int __GFP_FS ;
 struct page* __page_cache_alloc (int) ;
 scalar_t__ add_to_page_cache_lru (struct page*,struct address_space*,int ,int ) ;
 struct page* find_get_page (struct address_space*,int ) ;
 int mapping_gfp_mask (struct address_space*) ;
 int page_cache_release (struct page*) ;
 scalar_t__ trylock_page (struct page*) ;

struct page *
grab_cache_page_nowait(struct address_space *mapping, pgoff_t index)
{
 struct page *page = find_get_page(mapping, index);

 if (page) {
  if (trylock_page(page))
   return page;
  page_cache_release(page);
  return ((void*)0);
 }
 page = __page_cache_alloc(mapping_gfp_mask(mapping) & ~__GFP_FS);
 if (page && add_to_page_cache_lru(page, mapping, index, GFP_NOFS)) {
  page_cache_release(page);
  page = ((void*)0);
 }
 return page;
}
