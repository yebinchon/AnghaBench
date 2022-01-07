
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
struct btrfs_root {TYPE_1__* fs_info; } ;
struct TYPE_5__ {scalar_t__ flags; int ordered_free; int ordered_func; int func; } ;
struct async_cow {TYPE_2__ work; int extents; scalar_t__ end; scalar_t__ start; struct page* locked_page; struct btrfs_root* root; int inode; } ;
struct TYPE_6__ {int flags; int io_tree; struct btrfs_root* root; } ;
struct TYPE_4__ {int async_delalloc_pages; int async_submit_wait; int async_submit_draining; int delalloc_workers; } ;


 TYPE_3__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NOCOMPRESS ;
 int BUG_ON (int) ;
 int EXTENT_LOCKED ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PAGE_CACHE_SHIFT ;
 scalar_t__ PAGE_CACHE_SIZE ;
 int async_cow_free ;
 int async_cow_start ;
 int async_cow_submit ;
 int atomic_add (unsigned long,int *) ;
 int atomic_read (int *) ;
 int btrfs_queue_worker (int *,TYPE_2__*) ;
 int clear_extent_bit (int *,scalar_t__,scalar_t__,int ,int,int ,int *,int ) ;
 int igrab (struct inode*) ;
 struct async_cow* kmalloc (int,int ) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int cow_file_range_async(struct inode *inode, struct page *locked_page,
    u64 start, u64 end, int *page_started,
    unsigned long *nr_written)
{
 struct async_cow *async_cow;
 struct btrfs_root *root = BTRFS_I(inode)->root;
 unsigned long nr_pages;
 u64 cur_end;
 int limit = 10 * 1024 * 1042;

 clear_extent_bit(&BTRFS_I(inode)->io_tree, start, end, EXTENT_LOCKED,
    1, 0, ((void*)0), GFP_NOFS);
 while (start < end) {
  async_cow = kmalloc(sizeof(*async_cow), GFP_NOFS);
  BUG_ON(!async_cow);
  async_cow->inode = igrab(inode);
  async_cow->root = root;
  async_cow->locked_page = locked_page;
  async_cow->start = start;

  if (BTRFS_I(inode)->flags & BTRFS_INODE_NOCOMPRESS)
   cur_end = end;
  else
   cur_end = min(end, start + 512 * 1024 - 1);

  async_cow->end = cur_end;
  INIT_LIST_HEAD(&async_cow->extents);

  async_cow->work.func = async_cow_start;
  async_cow->work.ordered_func = async_cow_submit;
  async_cow->work.ordered_free = async_cow_free;
  async_cow->work.flags = 0;

  nr_pages = (cur_end - start + PAGE_CACHE_SIZE) >>
   PAGE_CACHE_SHIFT;
  atomic_add(nr_pages, &root->fs_info->async_delalloc_pages);

  btrfs_queue_worker(&root->fs_info->delalloc_workers,
       &async_cow->work);

  if (atomic_read(&root->fs_info->async_delalloc_pages) > limit) {
   wait_event(root->fs_info->async_submit_wait,
      (atomic_read(&root->fs_info->async_delalloc_pages) <
       limit));
  }

  while (atomic_read(&root->fs_info->async_submit_draining) &&
        atomic_read(&root->fs_info->async_delalloc_pages)) {
   wait_event(root->fs_info->async_submit_wait,
     (atomic_read(&root->fs_info->async_delalloc_pages) ==
      0));
  }

  *nr_written += nr_pages;
  start = cur_end + 1;
 }
 *page_started = 1;
 return 0;
}
