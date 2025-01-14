
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int i_nlink; unsigned long i_ino; int i_mode; int i_count; struct super_block* i_sb; } ;
struct ext3_super_block {int s_inodes_count; } ;
struct ext3_sb_info {int s_dirs_counter; int s_freeinodes_counter; struct ext3_super_block* s_es; } ;
struct ext3_group_desc {int bg_used_dirs_count; int bg_free_inodes_count; } ;
struct buffer_head {int b_data; } ;
typedef int handle_t ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 unsigned long EXT3_FIRST_INO (struct super_block*) ;
 unsigned long EXT3_INODES_PER_GROUP (struct super_block*) ;
 struct ext3_sb_info* EXT3_SB (struct super_block*) ;
 int S_ISDIR (int ) ;
 int atomic_read (int *) ;
 int brelse (struct buffer_head*) ;
 int clear_inode (struct inode*) ;
 int ext3_clear_bit_atomic (int ,unsigned long,int ) ;
 int ext3_debug (char*,unsigned long) ;
 int ext3_error (struct super_block*,char*,char*,unsigned long) ;
 struct ext3_group_desc* ext3_get_group_desc (struct super_block*,unsigned long,struct buffer_head**) ;
 int ext3_journal_dirty_metadata (int *,struct buffer_head*) ;
 int ext3_journal_get_write_access (int *,struct buffer_head*) ;
 int ext3_std_error (struct super_block*,int) ;
 int ext3_xattr_delete_inode (int *,struct inode*) ;
 int le16_add_cpu (int *,int) ;
 unsigned long le32_to_cpu (int ) ;
 int percpu_counter_dec (int *) ;
 int percpu_counter_inc (int *) ;
 int printk (char*,...) ;
 struct buffer_head* read_inode_bitmap (struct super_block*,unsigned long) ;
 int sb_bgl_lock (struct ext3_sb_info*,unsigned long) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;
 int trace_ext3_free_inode (struct inode*) ;
 int vfs_dq_drop (struct inode*) ;
 int vfs_dq_free_inode (struct inode*) ;
 int vfs_dq_init (struct inode*) ;

void ext3_free_inode (handle_t *handle, struct inode * inode)
{
 struct super_block * sb = inode->i_sb;
 int is_directory;
 unsigned long ino;
 struct buffer_head *bitmap_bh = ((void*)0);
 struct buffer_head *bh2;
 unsigned long block_group;
 unsigned long bit;
 struct ext3_group_desc * gdp;
 struct ext3_super_block * es;
 struct ext3_sb_info *sbi;
 int fatal = 0, err;

 if (atomic_read(&inode->i_count) > 1) {
  printk ("ext3_free_inode: inode has count=%d\n",
     atomic_read(&inode->i_count));
  return;
 }
 if (inode->i_nlink) {
  printk ("ext3_free_inode: inode has nlink=%d\n",
   inode->i_nlink);
  return;
 }
 if (!sb) {
  printk("ext3_free_inode: inode on nonexistent device\n");
  return;
 }
 sbi = EXT3_SB(sb);

 ino = inode->i_ino;
 ext3_debug ("freeing inode %lu\n", ino);
 trace_ext3_free_inode(inode);





 vfs_dq_init(inode);
 ext3_xattr_delete_inode(handle, inode);
 vfs_dq_free_inode(inode);
 vfs_dq_drop(inode);

 is_directory = S_ISDIR(inode->i_mode);


 clear_inode (inode);

 es = EXT3_SB(sb)->s_es;
 if (ino < EXT3_FIRST_INO(sb) || ino > le32_to_cpu(es->s_inodes_count)) {
  ext3_error (sb, "ext3_free_inode",
       "reserved or nonexistent inode %lu", ino);
  goto error_return;
 }
 block_group = (ino - 1) / EXT3_INODES_PER_GROUP(sb);
 bit = (ino - 1) % EXT3_INODES_PER_GROUP(sb);
 bitmap_bh = read_inode_bitmap(sb, block_group);
 if (!bitmap_bh)
  goto error_return;

 BUFFER_TRACE(bitmap_bh, "get_write_access");
 fatal = ext3_journal_get_write_access(handle, bitmap_bh);
 if (fatal)
  goto error_return;


 if (!ext3_clear_bit_atomic(sb_bgl_lock(sbi, block_group),
     bit, bitmap_bh->b_data))
  ext3_error (sb, "ext3_free_inode",
         "bit already cleared for inode %lu", ino);
 else {
  gdp = ext3_get_group_desc (sb, block_group, &bh2);

  BUFFER_TRACE(bh2, "get_write_access");
  fatal = ext3_journal_get_write_access(handle, bh2);
  if (fatal) goto error_return;

  if (gdp) {
   spin_lock(sb_bgl_lock(sbi, block_group));
   le16_add_cpu(&gdp->bg_free_inodes_count, 1);
   if (is_directory)
    le16_add_cpu(&gdp->bg_used_dirs_count, -1);
   spin_unlock(sb_bgl_lock(sbi, block_group));
   percpu_counter_inc(&sbi->s_freeinodes_counter);
   if (is_directory)
    percpu_counter_dec(&sbi->s_dirs_counter);

  }
  BUFFER_TRACE(bh2, "call ext3_journal_dirty_metadata");
  err = ext3_journal_dirty_metadata(handle, bh2);
  if (!fatal) fatal = err;
 }
 BUFFER_TRACE(bitmap_bh, "call ext3_journal_dirty_metadata");
 err = ext3_journal_dirty_metadata(handle, bitmap_bh);
 if (!fatal)
  fatal = err;

error_return:
 brelse(bitmap_bh);
 ext3_std_error(sb, fatal);
}
