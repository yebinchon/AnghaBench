
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext4_group_desc {int bg_flags; } ;
struct buffer_head {int dummy; } ;
typedef int ext4_group_t ;
typedef int ext4_fsblk_t ;


 int EXT4_BG_INODE_UNINIT ;
 scalar_t__ bh_submit_read (struct buffer_head*) ;
 scalar_t__ bitmap_uptodate (struct buffer_head*) ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int cpu_to_le16 (int ) ;
 int ext4_error (struct super_block*,char*,int ,int ) ;
 struct ext4_group_desc* ext4_get_group_desc (struct super_block*,int ,int *) ;
 int ext4_init_inode_bitmap (struct super_block*,struct buffer_head*,int ,struct ext4_group_desc*) ;
 int ext4_inode_bitmap (struct super_block*,struct ext4_group_desc*) ;
 int ext4_lock_group (struct super_block*,int ) ;
 int ext4_unlock_group (struct super_block*,int ) ;
 int lock_buffer (struct buffer_head*) ;
 int put_bh (struct buffer_head*) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;
 int set_bitmap_uptodate (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static struct buffer_head *
ext4_read_inode_bitmap(struct super_block *sb, ext4_group_t block_group)
{
 struct ext4_group_desc *desc;
 struct buffer_head *bh = ((void*)0);
 ext4_fsblk_t bitmap_blk;

 desc = ext4_get_group_desc(sb, block_group, ((void*)0));
 if (!desc)
  return ((void*)0);

 bitmap_blk = ext4_inode_bitmap(sb, desc);
 bh = sb_getblk(sb, bitmap_blk);
 if (unlikely(!bh)) {
  ext4_error(sb, "Cannot read inode bitmap - "
       "block_group = %u, inode_bitmap = %llu",
       block_group, bitmap_blk);
  return ((void*)0);
 }
 if (bitmap_uptodate(bh))
  return bh;

 lock_buffer(bh);
 if (bitmap_uptodate(bh)) {
  unlock_buffer(bh);
  return bh;
 }

 ext4_lock_group(sb, block_group);
 if (desc->bg_flags & cpu_to_le16(EXT4_BG_INODE_UNINIT)) {
  ext4_init_inode_bitmap(sb, bh, block_group, desc);
  set_bitmap_uptodate(bh);
  set_buffer_uptodate(bh);
  ext4_unlock_group(sb, block_group);
  unlock_buffer(bh);
  return bh;
 }
 ext4_unlock_group(sb, block_group);

 if (buffer_uptodate(bh)) {




  set_bitmap_uptodate(bh);
  unlock_buffer(bh);
  return bh;
 }






 set_bitmap_uptodate(bh);
 if (bh_submit_read(bh) < 0) {
  put_bh(bh);
  ext4_error(sb, "Cannot read inode bitmap - "
       "block_group = %u, inode_bitmap = %llu",
       block_group, bitmap_blk);
  return ((void*)0);
 }
 return bh;
}
