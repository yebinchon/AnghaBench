
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int gfp_t ;


 int EEXIST ;
 int GFP_RECLAIM_MASK ;
 struct page* __page_cache_alloc (int) ;
 int add_to_page_cache_lru (struct page*,struct address_space*,int ,int) ;
 struct page* find_lock_page (struct address_space*,int ) ;
 int page_cache_release (struct page*) ;
 scalar_t__ unlikely (int) ;

struct page *find_or_create_page(struct address_space *mapping,
  pgoff_t index, gfp_t gfp_mask)
{
 struct page *page;
 int err;
repeat:
 page = find_lock_page(mapping, index);
 if (!page) {
  page = __page_cache_alloc(gfp_mask);
  if (!page)
   return ((void*)0);






  err = add_to_page_cache_lru(page, mapping, index,
   (gfp_mask & GFP_RECLAIM_MASK));
  if (unlikely(err)) {
   page_cache_release(page);
   page = ((void*)0);
   if (err == -EEXIST)
    goto repeat;
  }
 }
 return page;
}
