
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int val; } ;
typedef TYPE_3__ swp_entry_t ;
struct page {int dummy; } ;
struct block_device {TYPE_2__* bd_inode; } ;
struct backing_dev_info {int dummy; } ;
struct TYPE_9__ {struct block_device* bdev; } ;
struct TYPE_7__ {TYPE_1__* i_mapping; } ;
struct TYPE_6__ {struct backing_dev_info* backing_dev_info; } ;


 scalar_t__ PageSwapCache (struct page*) ;
 int WARN_ON (int) ;
 int blk_run_backing_dev (struct backing_dev_info*,struct page*) ;
 int down_read (int *) ;
 int page_count (struct page*) ;
 int page_private (struct page*) ;
 TYPE_5__** swap_info ;
 int swap_unplug_sem ;
 size_t swp_type (TYPE_3__) ;
 int up_read (int *) ;

void swap_unplug_io_fn(struct backing_dev_info *unused_bdi, struct page *page)
{
 swp_entry_t entry;

 down_read(&swap_unplug_sem);
 entry.val = page_private(page);
 if (PageSwapCache(page)) {
  struct block_device *bdev = swap_info[swp_type(entry)]->bdev;
  struct backing_dev_info *bdi;
  WARN_ON(page_count(page) <= 1);

  bdi = bdev->bd_inode->i_mapping->backing_dev_info;
  blk_run_backing_dev(bdi, page);
 }
 up_read(&swap_unplug_sem);
}
