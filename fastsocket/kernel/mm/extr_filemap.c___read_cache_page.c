
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int gfp_t ;


 int EEXIST ;
 int ENOMEM ;
 struct page* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int __GFP_COLD ;
 struct page* __page_cache_alloc (int) ;
 int add_to_page_cache_lru (struct page*,struct address_space*,int ,int ) ;
 struct page* find_get_page (struct address_space*,int ) ;
 int page_cache_release (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct page *__read_cache_page(struct address_space *mapping,
    pgoff_t index,
    int (*filler)(void *, struct page *),
    void *data,
    gfp_t gfp)
{
 struct page *page;
 int err;
repeat:
 page = find_get_page(mapping, index);
 if (!page) {
  page = __page_cache_alloc(gfp | __GFP_COLD);
  if (!page)
   return ERR_PTR(-ENOMEM);
  err = add_to_page_cache_lru(page, mapping, index, GFP_KERNEL);
  if (unlikely(err)) {
   page_cache_release(page);
   if (err == -EEXIST)
    goto repeat;

   return ERR_PTR(err);
  }
  err = filler(data, page);
  if (err < 0) {
   page_cache_release(page);
   page = ERR_PTR(err);
  }
 }
 return page;
}
