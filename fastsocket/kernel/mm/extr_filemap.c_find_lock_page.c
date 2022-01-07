
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; struct address_space* mapping; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ pgoff_t ;


 int VM_BUG_ON (int) ;
 struct page* find_get_page (struct address_space*,scalar_t__) ;
 int lock_page (struct page*) ;
 int page_cache_release (struct page*) ;
 int radix_tree_exception (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_page (struct page*) ;

struct page *find_lock_page(struct address_space *mapping, pgoff_t offset)
{
 struct page *page;

repeat:
 page = find_get_page(mapping, offset);
 if (page && !radix_tree_exception(page)) {
  lock_page(page);

  if (unlikely(page->mapping != mapping)) {
   unlock_page(page);
   page_cache_release(page);
   goto repeat;
  }
  VM_BUG_ON(page->index != offset);
 }
 return page;
}
