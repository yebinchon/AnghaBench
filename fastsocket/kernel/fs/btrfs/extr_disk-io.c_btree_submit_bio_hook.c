
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {TYPE_1__* root; } ;
struct TYPE_3__ {int fs_info; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 int REQ_WRITE ;
 int __btree_submit_bio_done ;
 int __btree_submit_bio_start ;
 int btrfs_bio_wq_end_io (int ,struct bio*,int) ;
 int btrfs_map_bio (TYPE_1__*,int,struct bio*,int,int ) ;
 int btrfs_wq_submit_bio (int ,struct inode*,int,struct bio*,int,int ,int ,int ,int ) ;

__attribute__((used)) static int btree_submit_bio_hook(struct inode *inode, int rw, struct bio *bio,
     int mirror_num, unsigned long bio_flags,
     u64 bio_offset)
{
 int ret;

 if (!(rw & REQ_WRITE)) {





  ret = btrfs_bio_wq_end_io(BTRFS_I(inode)->root->fs_info,
       bio, 1);
  if (ret)
   return ret;
  return btrfs_map_bio(BTRFS_I(inode)->root, rw, bio,
         mirror_num, 0);
 }





 return btrfs_wq_submit_bio(BTRFS_I(inode)->root->fs_info,
       inode, rw, bio, mirror_num, 0,
       bio_offset,
       __btree_submit_bio_start,
       __btree_submit_bio_done);
}
