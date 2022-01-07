
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct fiemap_extent_info {int fi_flags; } ;
typedef int ext4_lblk_t ;
typedef int __u64 ;
struct TYPE_2__ {int s_blocksize_bits; } ;


 int EBADR ;
 int EXT4_FIEMAP_FLAGS ;
 int EXT4_INODE_EXTENTS ;
 int EXT_MAX_BLOCKS ;
 int FIEMAP_FLAG_XATTR ;
 int ext4_fill_fiemap_extents (struct inode*,int,int,struct fiemap_extent_info*) ;
 int ext4_get_block ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_xattr_fiemap (struct inode*,struct fiemap_extent_info*) ;
 scalar_t__ fiemap_check_flags (struct fiemap_extent_info*,int ) ;
 int generic_block_fiemap (struct inode*,struct fiemap_extent_info*,int,int,int ) ;

int ext4_fiemap(struct inode *inode, struct fiemap_extent_info *fieinfo,
  __u64 start, __u64 len)
{
 ext4_lblk_t start_blk;
 int error = 0;


 if (!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)))
  return generic_block_fiemap(inode, fieinfo, start, len,
   ext4_get_block);

 if (fiemap_check_flags(fieinfo, EXT4_FIEMAP_FLAGS))
  return -EBADR;

 if (fieinfo->fi_flags & FIEMAP_FLAG_XATTR) {
  error = ext4_xattr_fiemap(inode, fieinfo);
 } else {
  ext4_lblk_t len_blks;
  __u64 last_blk;

  start_blk = start >> inode->i_sb->s_blocksize_bits;
  last_blk = (start + len - 1) >> inode->i_sb->s_blocksize_bits;
  if (last_blk >= EXT_MAX_BLOCKS)
   last_blk = EXT_MAX_BLOCKS-1;
  len_blks = ((ext4_lblk_t) last_blk) - start_blk + 1;





  error = ext4_fill_fiemap_extents(inode, start_blk,
       len_blks, fieinfo);
 }

 return error;
}
