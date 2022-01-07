
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int MIGRATE_ISOLATE ;
 int MIGRATE_MOVABLE ;
 int MIGRATE_RESERVE ;
 scalar_t__ PageBuddy (struct page*) ;
 int get_pageblock_migratetype (struct page*) ;
 scalar_t__ page_order (struct page*) ;
 scalar_t__ pageblock_order ;

__attribute__((used)) static bool suitable_migration_target(struct page *page)
{

 int migratetype = get_pageblock_migratetype(page);


 if (migratetype == MIGRATE_ISOLATE || migratetype == MIGRATE_RESERVE)
  return 0;


 if (PageBuddy(page) && page_order(page) >= pageblock_order)
  return 1;


 if (migratetype == MIGRATE_MOVABLE)
  return 1;


 return 0;
}
