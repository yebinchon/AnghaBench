
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int balance_dirty_pages_ratelimited (struct address_space*) ;
 struct address_space* page_mapping (struct page*) ;
 scalar_t__ set_page_dirty (struct page*) ;

void set_page_dirty_balance(struct page *page, int page_mkwrite)
{
 if (set_page_dirty(page) || page_mkwrite) {
  struct address_space *mapping = page_mapping(page);

  if (mapping)
   balance_dirty_pages_ratelimited(mapping);
 }
}
