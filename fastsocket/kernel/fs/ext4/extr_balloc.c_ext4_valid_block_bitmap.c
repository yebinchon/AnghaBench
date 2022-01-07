
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int b_data; } ;
typedef scalar_t__ ext4_grpblk_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {scalar_t__ s_itb_per_group; } ;


 int EXT4_FEATURE_INCOMPAT_FLEX_BG ;
 scalar_t__ EXT4_HAS_INCOMPAT_FEATURE (struct super_block*,int ) ;
 TYPE_1__* EXT4_SB (struct super_block*) ;
 scalar_t__ ext4_block_bitmap (struct super_block*,struct ext4_group_desc*) ;
 int ext4_error (struct super_block*,char*,unsigned int,scalar_t__) ;
 scalar_t__ ext4_find_next_zero_bit (int ,scalar_t__,scalar_t__) ;
 scalar_t__ ext4_group_first_block_no (struct super_block*,unsigned int) ;
 scalar_t__ ext4_inode_bitmap (struct super_block*,struct ext4_group_desc*) ;
 scalar_t__ ext4_inode_table (struct super_block*,struct ext4_group_desc*) ;
 int ext4_test_bit (scalar_t__,int ) ;

__attribute__((used)) static int ext4_valid_block_bitmap(struct super_block *sb,
     struct ext4_group_desc *desc,
     unsigned int block_group,
     struct buffer_head *bh)
{
 ext4_grpblk_t offset;
 ext4_grpblk_t next_zero_bit;
 ext4_fsblk_t bitmap_blk;
 ext4_fsblk_t group_first_block;

 if (EXT4_HAS_INCOMPAT_FEATURE(sb, EXT4_FEATURE_INCOMPAT_FLEX_BG)) {






  return 1;
 }
 group_first_block = ext4_group_first_block_no(sb, block_group);


 bitmap_blk = ext4_block_bitmap(sb, desc);
 offset = bitmap_blk - group_first_block;
 if (!ext4_test_bit(offset, bh->b_data))

  goto err_out;


 bitmap_blk = ext4_inode_bitmap(sb, desc);
 offset = bitmap_blk - group_first_block;
 if (!ext4_test_bit(offset, bh->b_data))

  goto err_out;


 bitmap_blk = ext4_inode_table(sb, desc);
 offset = bitmap_blk - group_first_block;
 next_zero_bit = ext4_find_next_zero_bit(bh->b_data,
    offset + EXT4_SB(sb)->s_itb_per_group,
    offset);
 if (next_zero_bit >= offset + EXT4_SB(sb)->s_itb_per_group)

  return 1;

err_out:
 ext4_error(sb, "Invalid block bitmap - block_group = %d, block = %llu",
   block_group, bitmap_blk);
 return 0;
}
