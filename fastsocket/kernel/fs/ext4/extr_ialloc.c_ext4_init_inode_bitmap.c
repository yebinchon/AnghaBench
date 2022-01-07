
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct ext4_sb_info {int dummy; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int b_data; } ;
typedef int ext4_group_t ;


 int EXT4_INODES_PER_GROUP (struct super_block*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int J_ASSERT_BH (struct buffer_head*,int ) ;
 int buffer_locked (struct buffer_head*) ;
 int ext4_error (struct super_block*,char*,int ) ;
 int ext4_free_blks_set (struct super_block*,struct ext4_group_desc*,int ) ;
 int ext4_free_inodes_set (struct super_block*,struct ext4_group_desc*,int ) ;
 int ext4_group_desc_csum_verify (struct ext4_sb_info*,int ,struct ext4_group_desc*) ;
 int ext4_itable_unused_set (struct super_block*,struct ext4_group_desc*,int ) ;
 int mark_bitmap_end (int,int,int ) ;
 int memset (int ,int,int) ;

unsigned ext4_init_inode_bitmap(struct super_block *sb, struct buffer_head *bh,
    ext4_group_t block_group,
    struct ext4_group_desc *gdp)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);

 J_ASSERT_BH(bh, buffer_locked(bh));



 if (!ext4_group_desc_csum_verify(sbi, block_group, gdp)) {
  ext4_error(sb, "Checksum bad for group %u", block_group);
  ext4_free_blks_set(sb, gdp, 0);
  ext4_free_inodes_set(sb, gdp, 0);
  ext4_itable_unused_set(sb, gdp, 0);
  memset(bh->b_data, 0xff, sb->s_blocksize);
  return 0;
 }

 memset(bh->b_data, 0, (EXT4_INODES_PER_GROUP(sb) + 7) / 8);
 mark_bitmap_end(EXT4_INODES_PER_GROUP(sb), sb->s_blocksize * 8,
   bh->b_data);

 return EXT4_INODES_PER_GROUP(sb);
}
