
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scrub_dev {TYPE_2__* dev; } ;
struct scrub_bio {int err; int work; struct bio* bio; struct scrub_dev* sdev; } ;
struct btrfs_fs_info {int scrub_workers; } ;
struct bio {struct scrub_bio* bi_private; } ;
struct TYPE_4__ {TYPE_1__* dev_root; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;


 int btrfs_queue_worker (int *,int *) ;

__attribute__((used)) static void scrub_bio_end_io(struct bio *bio, int err)
{
 struct scrub_bio *sbio = bio->bi_private;
 struct scrub_dev *sdev = sbio->sdev;
 struct btrfs_fs_info *fs_info = sdev->dev->dev_root->fs_info;

 sbio->err = err;
 sbio->bio = bio;

 btrfs_queue_worker(&fs_info->scrub_workers, &sbio->work);
}
