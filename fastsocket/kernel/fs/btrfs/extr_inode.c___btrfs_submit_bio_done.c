
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;


 TYPE_1__* BTRFS_I (struct inode*) ;
 int btrfs_map_bio (struct btrfs_root*,int,struct bio*,int,int) ;

__attribute__((used)) static int __btrfs_submit_bio_done(struct inode *inode, int rw, struct bio *bio,
     int mirror_num, unsigned long bio_flags,
     u64 bio_offset)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 return btrfs_map_bio(root, rw, bio, mirror_num, 1);
}
