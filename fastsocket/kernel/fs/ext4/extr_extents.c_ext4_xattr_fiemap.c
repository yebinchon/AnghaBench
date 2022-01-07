
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {TYPE_3__* i_sb; } ;
struct fiemap_extent_info {int dummy; } ;
struct ext4_iloc {TYPE_1__* bh; } ;
typedef int __u64 ;
typedef int __u32 ;
struct TYPE_8__ {int i_extra_isize; int i_file_acl; } ;
struct TYPE_7__ {int s_blocksize_bits; int s_blocksize; } ;
struct TYPE_6__ {int s_inode_size; } ;
struct TYPE_5__ {int b_blocknr; } ;


 int EXT4_GOOD_OLD_INODE_SIZE ;
 TYPE_4__* EXT4_I (struct inode*) ;
 TYPE_2__* EXT4_SB (TYPE_3__*) ;
 int EXT4_STATE_XATTR ;
 int FIEMAP_EXTENT_DATA_INLINE ;
 int FIEMAP_EXTENT_LAST ;
 int ext4_get_inode_loc (struct inode*,struct ext4_iloc*) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int fiemap_fill_next_extent (struct fiemap_extent_info*,int ,int,int,int ) ;

__attribute__((used)) static int ext4_xattr_fiemap(struct inode *inode,
    struct fiemap_extent_info *fieinfo)
{
 __u64 physical = 0;
 __u64 length;
 __u32 flags = FIEMAP_EXTENT_LAST;
 int blockbits = inode->i_sb->s_blocksize_bits;
 int error = 0;


 if (ext4_test_inode_state(inode, EXT4_STATE_XATTR)) {
  struct ext4_iloc iloc;
  int offset;

  error = ext4_get_inode_loc(inode, &iloc);
  if (error)
   return error;
  physical = iloc.bh->b_blocknr << blockbits;
  offset = EXT4_GOOD_OLD_INODE_SIZE +
    EXT4_I(inode)->i_extra_isize;
  physical += offset;
  length = EXT4_SB(inode->i_sb)->s_inode_size - offset;
  flags |= FIEMAP_EXTENT_DATA_INLINE;
 } else {
  physical = EXT4_I(inode)->i_file_acl << blockbits;
  length = inode->i_sb->s_blocksize;
 }

 if (physical)
  error = fiemap_fill_next_extent(fieinfo, 0, physical,
      length, flags);
 return (error < 0 ? error : 0);
}
