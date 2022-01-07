
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;


 int EAGAIN ;
 int EBUSY ;
 int GFP_KERNEL ;
 int MIGRATE_SYNC ;
 scalar_t__ PageDirty (struct page*) ;
 int do_migrate_page (struct address_space*,struct page*,struct page*,int) ;
 scalar_t__ page_has_private (struct page*) ;
 int try_to_release_page (struct page*,int ) ;
 int writeout (struct address_space*,struct page*) ;

__attribute__((used)) static int fallback_migrate_page(struct address_space *mapping,
 struct page *newpage, struct page *page, enum migrate_mode mode)
{
 if (PageDirty(page)) {

  if (mode != MIGRATE_SYNC)
   return -EBUSY;
  return writeout(mapping, page);
 }





 if (page_has_private(page) &&
     !try_to_release_page(page, GFP_KERNEL))
  return -EAGAIN;

 return do_migrate_page(mapping, newpage, page, mode);
}
