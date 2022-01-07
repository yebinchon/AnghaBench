
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct writeback_control {int nr_to_write; int nonblocking; int for_reclaim; int range_end; int range_start; int sync_mode; } ;
struct page {int dummy; } ;
struct address_space {TYPE_1__* a_ops; } ;
struct TYPE_2__ {int (* writepage ) (struct page*,struct writeback_control*) ;} ;


 int AOP_WRITEPAGE_ACTIVATE ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int LLONG_MAX ;
 int WB_SYNC_NONE ;
 int clear_page_dirty_for_io (struct page*) ;
 int lock_page (struct page*) ;
 int remove_migration_ptes (struct page*,struct page*) ;
 int stub1 (struct page*,struct writeback_control*) ;

__attribute__((used)) static int writeout(struct address_space *mapping, struct page *page)
{
 struct writeback_control wbc = {
  .sync_mode = WB_SYNC_NONE,
  .nr_to_write = 1,
  .range_start = 0,
  .range_end = LLONG_MAX,
  .nonblocking = 1,
  .for_reclaim = 1
 };
 int rc;

 if (!mapping->a_ops->writepage)

  return -EINVAL;

 if (!clear_page_dirty_for_io(page))

  return -EAGAIN;
 remove_migration_ptes(page, page);

 rc = mapping->a_ops->writepage(page, &wbc);

 if (rc != AOP_WRITEPAGE_ACTIVATE)

  lock_page(page);

 return (rc < 0) ? -EIO : -EAGAIN;
}
