
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct bio {int dummy; } ;


 int __btrfs_lookup_bio_sums (struct btrfs_root*,struct inode*,struct bio*,int ,int *,int ) ;

int btrfs_lookup_bio_sums(struct btrfs_root *root, struct inode *inode,
     struct bio *bio, u32 *dst)
{
 return __btrfs_lookup_bio_sums(root, inode, bio, 0, dst, 0);
}
