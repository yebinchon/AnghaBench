
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 int lock_page (struct page*) ;
 int mapping_set_error (struct address_space*,int) ;
 struct address_space* page_mapping (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void handle_write_error(struct address_space *mapping,
    struct page *page, int error)
{
 lock_page(page);
 if (page_mapping(page) == mapping)
  mapping_set_error(mapping, error);
 unlock_page(page);
}
