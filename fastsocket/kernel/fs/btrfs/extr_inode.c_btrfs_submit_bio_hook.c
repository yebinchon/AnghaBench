
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct TYPE_3__ {scalar_t__ objectid; } ;
struct btrfs_root {int fs_info; TYPE_1__ root_key; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {int flags; struct btrfs_root* root; } ;


 scalar_t__ BTRFS_DATA_RELOC_TREE_OBJECTID ;
 TYPE_2__* BTRFS_I (struct inode*) ;
 int BTRFS_INODE_NODATASUM ;
 unsigned long EXTENT_BIO_COMPRESSED ;
 int REQ_WRITE ;
 int __btrfs_submit_bio_done ;
 int __btrfs_submit_bio_start ;
 int btrfs_bio_wq_end_io (int ,struct bio*,int) ;
 scalar_t__ btrfs_is_free_space_inode (struct btrfs_root*,struct inode*) ;
 int btrfs_lookup_bio_sums (struct btrfs_root*,struct inode*,struct bio*,int *) ;
 int btrfs_map_bio (struct btrfs_root*,int,struct bio*,int,int ) ;
 int btrfs_submit_compressed_read (struct inode*,struct bio*,int,unsigned long) ;
 int btrfs_wq_submit_bio (int ,struct inode*,int,struct bio*,int,unsigned long,int ,int ,int ) ;

__attribute__((used)) static int btrfs_submit_bio_hook(struct inode *inode, int rw, struct bio *bio,
     int mirror_num, unsigned long bio_flags,
     u64 bio_offset)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 int ret = 0;
 int skip_sum;
 int metadata = 0;

 skip_sum = BTRFS_I(inode)->flags & BTRFS_INODE_NODATASUM;

 if (btrfs_is_free_space_inode(root, inode))
  metadata = 2;

 if (!(rw & REQ_WRITE)) {
  ret = btrfs_bio_wq_end_io(root->fs_info, bio, metadata);
  if (ret)
   return ret;

  if (bio_flags & EXTENT_BIO_COMPRESSED) {
   return btrfs_submit_compressed_read(inode, bio,
          mirror_num, bio_flags);
  } else if (!skip_sum) {
   ret = btrfs_lookup_bio_sums(root, inode, bio, ((void*)0));
   if (ret)
    return ret;
  }
  goto mapit;
 } else if (!skip_sum) {

  if (root->root_key.objectid == BTRFS_DATA_RELOC_TREE_OBJECTID)
   goto mapit;

  return btrfs_wq_submit_bio(BTRFS_I(inode)->root->fs_info,
       inode, rw, bio, mirror_num,
       bio_flags, bio_offset,
       __btrfs_submit_bio_start,
       __btrfs_submit_bio_done);
 }

mapit:
 return btrfs_map_bio(root, rw, bio, mirror_num, 0);
}
