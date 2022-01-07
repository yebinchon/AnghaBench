
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;
typedef int gfp_t ;


 struct page* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct page*) ;
 scalar_t__ PageUptodate (struct page*) ;
 struct page* __read_cache_page (struct address_space*,int ,int (*) (void*,struct page*),void*,int ) ;
 int lock_page (struct page*) ;
 int mark_page_accessed (struct page*) ;
 int page_cache_release (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static struct page *do_read_cache_page(struct address_space *mapping,
    pgoff_t index,
    int (*filler)(void *, struct page *),
    void *data,
    gfp_t gfp)

{
 struct page *page;
 int err;

retry:
 page = __read_cache_page(mapping, index, filler, data, gfp);
 if (IS_ERR(page))
  return page;
 if (PageUptodate(page))
  goto out;

 lock_page(page);
 if (!page->mapping) {
  unlock_page(page);
  page_cache_release(page);
  goto retry;
 }
 if (PageUptodate(page)) {
  unlock_page(page);
  goto out;
 }
 err = filler(data, page);
 if (err < 0) {
  page_cache_release(page);
  return ERR_PTR(err);
 }
out:
 mark_page_accessed(page);
 return page;
}
