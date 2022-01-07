
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct ext4_sb_info {scalar_t__ s_groups_count; int s_itb_per_group; int s_resize_lock; TYPE_2__** s_group_desc; TYPE_1__* s_es; } ;
struct ext4_new_group_data {scalar_t__ group; int block_bitmap; int inode_bitmap; int inode_table; int blocks_count; } ;
struct buffer_head {int b_data; int b_size; } ;
typedef struct buffer_head handle_t ;
typedef int ext4_grpblk_t ;
typedef int ext4_fsblk_t ;
struct TYPE_4__ {int b_data; } ;
struct TYPE_3__ {int s_reserved_gdt_blocks; } ;


 int EBUSY ;
 int EIO ;
 int EXT4_INODES_PER_GROUP (struct super_block*) ;
 int EXT4_MAX_TRANS_DATA ;
 struct ext4_sb_info* EXT4_SB (struct super_block*) ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 struct buffer_head* bclean (struct buffer_head*,struct super_block*,int) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ ext4_bg_has_super (struct super_block*,scalar_t__) ;
 unsigned long ext4_bg_num_gdb (struct super_block*,scalar_t__) ;
 int ext4_debug (char*,int,...) ;
 int ext4_group_first_block_no (struct super_block*,scalar_t__) ;
 int ext4_handle_dirty_metadata (struct buffer_head*,int *,struct buffer_head*) ;
 int ext4_journal_get_write_access (struct buffer_head*,struct buffer_head*) ;
 struct buffer_head* ext4_journal_start_sb (struct super_block*,int ) ;
 int ext4_journal_stop (struct buffer_head*) ;
 int ext4_set_bit (int,int ) ;
 int extend_or_restart_transaction (struct buffer_head*,int,struct buffer_head*) ;
 int le16_to_cpu (int ) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_bitmap_end (int ,int,int ) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct buffer_head* sb_getblk (struct super_block*,int) ;
 int sb_issue_zeroout (struct super_block*,int,int,int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int setup_new_group_blocks(struct super_block *sb,
      struct ext4_new_group_data *input)
{
 struct ext4_sb_info *sbi = EXT4_SB(sb);
 ext4_fsblk_t start = ext4_group_first_block_no(sb, input->group);
 int reserved_gdb = ext4_bg_has_super(sb, input->group) ?
  le16_to_cpu(sbi->s_es->s_reserved_gdt_blocks) : 0;
 unsigned long gdblocks = ext4_bg_num_gdb(sb, input->group);
 struct buffer_head *bh;
 handle_t *handle;
 ext4_fsblk_t block;
 ext4_grpblk_t bit;
 int i;
 int err = 0, err2;


 handle = ext4_journal_start_sb(sb, EXT4_MAX_TRANS_DATA);

 if (IS_ERR(handle))
  return PTR_ERR(handle);

 mutex_lock(&sbi->s_resize_lock);
 if (input->group != sbi->s_groups_count) {
  err = -EBUSY;
  goto exit_journal;
 }

 if (IS_ERR(bh = bclean(handle, sb, input->block_bitmap))) {
  err = PTR_ERR(bh);
  goto exit_journal;
 }

 if (ext4_bg_has_super(sb, input->group)) {
  ext4_debug("mark backup superblock %#04llx (+0)\n", start);
  ext4_set_bit(0, bh->b_data);
 }


 for (i = 0, bit = 1, block = start + 1;
      i < gdblocks; i++, block++, bit++) {
  struct buffer_head *gdb;

  ext4_debug("update backup group %#04llx (+%d)\n", block, bit);

  if ((err = extend_or_restart_transaction(handle, 1, bh)))
   goto exit_bh;

  gdb = sb_getblk(sb, block);
  if (!gdb) {
   err = -EIO;
   goto exit_bh;
  }
  if ((err = ext4_journal_get_write_access(handle, gdb))) {
   brelse(gdb);
   goto exit_bh;
  }
  lock_buffer(gdb);
  memcpy(gdb->b_data, sbi->s_group_desc[i]->b_data, gdb->b_size);
  set_buffer_uptodate(gdb);
  unlock_buffer(gdb);
  ext4_handle_dirty_metadata(handle, ((void*)0), gdb);
  ext4_set_bit(bit, bh->b_data);
  brelse(gdb);
 }


 ext4_debug("clear inode table blocks %#04llx -> %#04lx\n",
   block, sbi->s_itb_per_group);
 err = sb_issue_zeroout(sb, gdblocks + start + 1, reserved_gdb,
          GFP_NOFS);
 if (err)
  goto exit_bh;
 for (i = 0, bit = gdblocks + 1; i < reserved_gdb; i++, bit++)
  ext4_set_bit(bit, bh->b_data);


 ext4_debug("mark block bitmap %#04llx (+%llu)\n", input->block_bitmap,
     input->block_bitmap - start);
 ext4_set_bit(input->block_bitmap - start, bh->b_data);
 ext4_debug("mark inode bitmap %#04llx (+%llu)\n", input->inode_bitmap,
     input->inode_bitmap - start);
 ext4_set_bit(input->inode_bitmap - start, bh->b_data);


 block = input->inode_table;
 ext4_debug("clear inode table blocks %#04llx -> %#04lx\n",
   block, sbi->s_itb_per_group);
 err = sb_issue_zeroout(sb, block, sbi->s_itb_per_group, GFP_NOFS);
 if (err)
  goto exit_bh;
 for (i = 0, bit = input->inode_table - start;
      i < sbi->s_itb_per_group; i++, bit++)
  ext4_set_bit(bit, bh->b_data);

 if ((err = extend_or_restart_transaction(handle, 2, bh)))
  goto exit_bh;

 mark_bitmap_end(input->blocks_count, sb->s_blocksize * 8, bh->b_data);
 ext4_handle_dirty_metadata(handle, ((void*)0), bh);
 brelse(bh);

 ext4_debug("clear inode bitmap %#04llx (+%llu)\n",
     input->inode_bitmap, input->inode_bitmap - start);
 if (IS_ERR(bh = bclean(handle, sb, input->inode_bitmap))) {
  err = PTR_ERR(bh);
  goto exit_journal;
 }

 mark_bitmap_end(EXT4_INODES_PER_GROUP(sb), sb->s_blocksize * 8,
   bh->b_data);
 ext4_handle_dirty_metadata(handle, ((void*)0), bh);
exit_bh:
 brelse(bh);

exit_journal:
 mutex_unlock(&sbi->s_resize_lock);
 if ((err2 = ext4_journal_stop(handle)) && !err)
  err = err2;

 return err;
}
