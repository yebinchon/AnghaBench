
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext4_sb_info {TYPE_1__* s_flex_groups; scalar_t__ s_log_groups_per_flex; } ;
struct ext4_group_info {int alloc_sem; } ;
struct ext4_group_desc {int bg_flags; int bg_checksum; } ;
struct buffer_head {int b_data; } ;
typedef unsigned long ext4_group_t ;
struct TYPE_2__ {int used_dirs; } ;


 int EXT4_BG_INODE_UNINIT ;
 int EXT4_FEATURE_RO_COMPAT_GDT_CSUM ;
 unsigned long EXT4_FIRST_INO (struct super_block*) ;
 scalar_t__ EXT4_HAS_RO_COMPAT_FEATURE (struct super_block*,int ) ;
 unsigned long EXT4_INODES_PER_GROUP (struct super_block*) ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 scalar_t__ S_ISDIR (int) ;
 int atomic_inc (int *) ;
 int cpu_to_le16 (int ) ;
 int down_read (int *) ;
 int ext4_error (struct super_block*,char*,unsigned long,unsigned long) ;
 unsigned long ext4_flex_group (struct ext4_sb_info*,unsigned long) ;
 int ext4_free_inodes_count (struct super_block*,struct ext4_group_desc*) ;
 int ext4_free_inodes_set (struct super_block*,struct ext4_group_desc*,int) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,unsigned long,int *) ;
 struct ext4_group_info* ext4_get_group_info (struct super_block*,unsigned long) ;
 int ext4_group_desc_csum (struct ext4_sb_info*,unsigned long,struct ext4_group_desc*) ;
 unsigned long ext4_itable_unused_count (struct super_block*,struct ext4_group_desc*) ;
 int ext4_itable_unused_set (struct super_block*,struct ext4_group_desc*,unsigned long) ;
 int ext4_lock_group (struct super_block*,unsigned long) ;
 scalar_t__ ext4_set_bit (unsigned long,int ) ;
 int ext4_unlock_group (struct super_block*,unsigned long) ;
 int ext4_used_dirs_count (struct super_block*,struct ext4_group_desc*) ;
 int ext4_used_dirs_set (struct super_block*,struct ext4_group_desc*,int) ;
 int up_read (int *) ;

__attribute__((used)) static int ext4_claim_inode(struct super_block *sb,
   struct buffer_head *inode_bitmap_bh,
   unsigned long ino, ext4_group_t group, int mode)
{
 int free = 0, retval = 0, count;
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 struct ext4_group_info *grp = ext4_get_group_info(sb, group);
 struct ext4_group_desc *gdp = ext4_get_group_desc(sb, group, ((void*)0));
 down_read(&grp->alloc_sem);
 ext4_lock_group(sb, group);
 if (ext4_set_bit(ino, inode_bitmap_bh->b_data)) {

  retval = 1;
  goto err_ret;
 }
 ino++;
 if ((group == 0 && ino < EXT4_FIRST_INO(sb)) ||
   ino > EXT4_INODES_PER_GROUP(sb)) {
  ext4_unlock_group(sb, group);
  up_read(&grp->alloc_sem);
  ext4_error(sb, "reserved inode or inode > inodes count - "
      "block_group = %u, inode=%lu", group,
      ino + group * EXT4_INODES_PER_GROUP(sb));
  return 1;
 }


 if (EXT4_HAS_RO_COMPAT_FEATURE(sb, EXT4_FEATURE_RO_COMPAT_GDT_CSUM)) {

  if (gdp->bg_flags & cpu_to_le16(EXT4_BG_INODE_UNINIT)) {
   gdp->bg_flags &= cpu_to_le16(~EXT4_BG_INODE_UNINIT);







   free = 0;
  } else {
   free = EXT4_INODES_PER_GROUP(sb) -
    ext4_itable_unused_count(sb, gdp);
  }







  if (ino > free)
   ext4_itable_unused_set(sb, gdp,
     (EXT4_INODES_PER_GROUP(sb) - ino));
 }
 count = ext4_free_inodes_count(sb, gdp) - 1;
 ext4_free_inodes_set(sb, gdp, count);
 if (S_ISDIR(mode)) {
  count = ext4_used_dirs_count(sb, gdp) + 1;
  ext4_used_dirs_set(sb, gdp, count);
  if (sbi->s_log_groups_per_flex) {
   ext4_group_t f = ext4_flex_group(sbi, group);

   atomic_inc(&sbi->s_flex_groups[f].used_dirs);
  }
 }
 gdp->bg_checksum = ext4_group_desc_csum(sbi, group, gdp);
err_ret:
 ext4_unlock_group(sb, group);
 up_read(&grp->alloc_sem);
 return retval;
}
