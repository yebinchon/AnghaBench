
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;
struct TYPE_2__ {int flags; } ;


 int MIGRATE_ASYNC ;
 int MIGRATE_SYNC ;
 int PF_SWAPWRITE ;
 TYPE_1__* current ;
 int do_migrate_page (struct address_space*,struct page*,struct page*,int) ;

int migrate_page(struct address_space *mapping,
  struct page *newpage, struct page *page)
{
 enum migrate_mode mode = MIGRATE_ASYNC;






 if (current->flags & PF_SWAPWRITE)
  mode = MIGRATE_SYNC;

 return do_migrate_page(mapping, newpage, page, mode);
}
