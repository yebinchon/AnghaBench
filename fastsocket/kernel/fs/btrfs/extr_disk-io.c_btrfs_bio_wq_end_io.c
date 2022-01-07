
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct end_io_wq {int metadata; struct bio* bio; scalar_t__ error; struct btrfs_fs_info* info; int end_io; struct end_io_wq* private; } ;
struct btrfs_fs_info {int dummy; } ;
struct bio {int bi_end_io; struct end_io_wq* bi_private; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int end_workqueue_bio ;
 struct end_io_wq* kmalloc (int,int ) ;

int btrfs_bio_wq_end_io(struct btrfs_fs_info *info, struct bio *bio,
   int metadata)
{
 struct end_io_wq *end_io_wq;
 end_io_wq = kmalloc(sizeof(*end_io_wq), GFP_NOFS);
 if (!end_io_wq)
  return -ENOMEM;

 end_io_wq->private = bio->bi_private;
 end_io_wq->end_io = bio->bi_end_io;
 end_io_wq->info = info;
 end_io_wq->error = 0;
 end_io_wq->bio = bio;
 end_io_wq->metadata = metadata;

 bio->bi_private = end_io_wq;
 bio->bi_end_io = end_workqueue_bio;
 return 0;
}
