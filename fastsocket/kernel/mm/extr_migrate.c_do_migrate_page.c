
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;


 int BUG_ON (int ) ;
 int PageWriteback (struct page*) ;
 int migrate_page_copy (struct page*,struct page*) ;
 int migrate_page_move_mapping (struct address_space*,struct page*,struct page*,int *,int) ;

int do_migrate_page(struct address_space *mapping,
  struct page *newpage, struct page *page, enum migrate_mode mode)
{
 int rc;

 BUG_ON(PageWriteback(page));

 rc = migrate_page_move_mapping(mapping, newpage, page, ((void*)0), mode);

 if (rc)
  return rc;

 migrate_page_copy(newpage, page);
 return 0;
}
