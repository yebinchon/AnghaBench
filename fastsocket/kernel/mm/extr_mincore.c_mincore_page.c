
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; } ;
typedef TYPE_1__ swp_entry_t ;
struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef int pgoff_t ;


 unsigned char PageUptodate (struct page*) ;
 struct page* find_get_page (struct address_space*,int ) ;
 int page_cache_release (struct page*) ;
 TYPE_1__ radix_to_swp_entry (struct page*) ;
 scalar_t__ radix_tree_exceptional_entry (struct page*) ;
 struct address_space swapper_space ;

__attribute__((used)) static unsigned char mincore_page(struct address_space *mapping, pgoff_t pgoff)
{
 unsigned char present = 0;
 struct page *page;







 page = find_get_page(mapping, pgoff);







 if (page) {
  present = PageUptodate(page);
  page_cache_release(page);
 }

 return present;
}
