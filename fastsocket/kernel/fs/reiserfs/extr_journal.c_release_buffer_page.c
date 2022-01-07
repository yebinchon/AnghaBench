
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int mapping; } ;
struct buffer_head {struct page* b_page; } ;


 int page_cache_get (struct page*) ;
 int page_cache_release (struct page*) ;
 int put_bh (struct buffer_head*) ;
 int try_to_free_buffers (struct page*) ;
 scalar_t__ trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void release_buffer_page(struct buffer_head *bh)
{
 struct page *page = bh->b_page;
 if (!page->mapping && trylock_page(page)) {
  page_cache_get(page);
  put_bh(bh);
  if (!page->mapping)
   try_to_free_buffers(page);
  unlock_page(page);
  page_cache_release(page);
 } else {
  put_bh(bh);
 }
}
