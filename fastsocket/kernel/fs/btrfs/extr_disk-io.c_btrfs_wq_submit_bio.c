
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct btrfs_fs_info {int nr_async_submits; int async_submit_wait; int async_submit_draining; int workers; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {scalar_t__ flags; int ordered_free; int ordered_func; int func; } ;
struct async_submit_bio {int rw; int mirror_num; unsigned long bio_flags; TYPE_1__ work; scalar_t__ error; int bio_offset; int * submit_bio_done; int * submit_bio_start; struct bio* bio; struct inode* inode; } ;
typedef int extent_submit_bio_hook_t ;


 int ENOMEM ;
 int GFP_NOFS ;
 int REQ_SYNC ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 int btrfs_queue_worker (int *,TYPE_1__*) ;
 int btrfs_set_work_high_prio (TYPE_1__*) ;
 struct async_submit_bio* kmalloc (int,int ) ;
 int run_one_async_done ;
 int run_one_async_free ;
 int run_one_async_start ;
 int wait_event (int ,int) ;

int btrfs_wq_submit_bio(struct btrfs_fs_info *fs_info, struct inode *inode,
   int rw, struct bio *bio, int mirror_num,
   unsigned long bio_flags,
   u64 bio_offset,
   extent_submit_bio_hook_t *submit_bio_start,
   extent_submit_bio_hook_t *submit_bio_done)
{
 struct async_submit_bio *async;

 async = kmalloc(sizeof(*async), GFP_NOFS);
 if (!async)
  return -ENOMEM;

 async->inode = inode;
 async->rw = rw;
 async->bio = bio;
 async->mirror_num = mirror_num;
 async->submit_bio_start = submit_bio_start;
 async->submit_bio_done = submit_bio_done;

 async->work.func = run_one_async_start;
 async->work.ordered_func = run_one_async_done;
 async->work.ordered_free = run_one_async_free;

 async->work.flags = 0;
 async->bio_flags = bio_flags;
 async->bio_offset = bio_offset;

 async->error = 0;

 atomic_inc(&fs_info->nr_async_submits);

 if (rw & REQ_SYNC)
  btrfs_set_work_high_prio(&async->work);

 btrfs_queue_worker(&fs_info->workers, &async->work);

 while (atomic_read(&fs_info->async_submit_draining) &&
       atomic_read(&fs_info->nr_async_submits)) {
  wait_event(fs_info->async_submit_wait,
      (atomic_read(&fs_info->nr_async_submits) == 0));
 }

 return 0;
}
