
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct inode {int i_size; int i_ctime; int i_mtime; scalar_t__ i_nlink; struct super_block* i_sb; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {int i_disksize; int i_data_sem; } ;


 int EXT4_BLOCK_SIZE_BITS (struct super_block*) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ EXT_MAX_BLOCKS ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int down_write (int *) ;
 int ext4_block_truncate_page (int *,struct address_space*,int) ;
 int ext4_current_time (struct inode*) ;
 int ext4_discard_preallocations (struct inode*) ;
 int ext4_ext_invalidate_cache (struct inode*) ;
 int ext4_ext_remove_space (struct inode*,int,scalar_t__) ;
 int ext4_handle_sync (int *) ;
 int * ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 scalar_t__ ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 int flush_aio_dio_completed_IO (struct inode*) ;
 int up_write (int *) ;

void ext4_ext_truncate(struct inode *inode)
{
 struct address_space *mapping = inode->i_mapping;
 struct super_block *sb = inode->i_sb;
 ext4_lblk_t last_block;
 handle_t *handle;
 int err = 0;





 flush_aio_dio_completed_IO(inode);




 err = ext4_writepage_trans_blocks(inode);
 handle = ext4_journal_start(inode, err);
 if (IS_ERR(handle))
  return;

 if (inode->i_size & (sb->s_blocksize - 1))
  ext4_block_truncate_page(handle, mapping, inode->i_size);

 if (ext4_orphan_add(handle, inode))
  goto out_stop;

 down_write(&EXT4_I(inode)->i_data_sem);
 ext4_ext_invalidate_cache(inode);

 ext4_discard_preallocations(inode);
 EXT4_I(inode)->i_disksize = inode->i_size;
 ext4_mark_inode_dirty(handle, inode);

 last_block = (inode->i_size + sb->s_blocksize - 1)
   >> EXT4_BLOCK_SIZE_BITS(sb);
 err = ext4_ext_remove_space(inode, last_block, EXT_MAX_BLOCKS - 1);




 if (IS_SYNC(inode))
  ext4_handle_sync(handle);

out_stop:
 up_write(&EXT4_I(inode)->i_data_sem);







 if (inode->i_nlink)
  ext4_orphan_del(handle, inode);

 inode->i_mtime = inode->i_ctime = ext4_current_time(inode);
 ext4_mark_inode_dirty(handle, inode);
 ext4_journal_stop(handle);
}
