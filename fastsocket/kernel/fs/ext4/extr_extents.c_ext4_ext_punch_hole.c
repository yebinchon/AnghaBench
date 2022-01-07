
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int s_blocksize; } ;
struct inode {int i_size; int i_mutex; int i_ctime; int i_mtime; struct address_space* i_mapping; struct super_block* i_sb; } ;
struct address_space {scalar_t__ nrpages; } ;
typedef int loff_t ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
struct TYPE_2__ {int i_data_sem; } ;


 int EPERM ;
 int ETXTBSY ;
 int EXT4_BLOCK_SIZE_BITS (struct super_block*) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 scalar_t__ IS_APPEND (struct inode*) ;
 scalar_t__ IS_ERR (int *) ;
 scalar_t__ IS_IMMUTABLE (struct inode*) ;
 scalar_t__ IS_SWAPFILE (struct inode*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int PAGECACHE_TAG_DIRTY ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PTR_ERR (int *) ;
 int down_write (int *) ;
 int ext4_current_time (struct inode*) ;
 int ext4_discard_partial_page_buffers (int *,struct address_space*,int,int,int ) ;
 int ext4_discard_preallocations (struct inode*) ;
 int ext4_ext_invalidate_cache (struct inode*) ;
 int ext4_ext_remove_space (struct inode*,int,int) ;
 int ext4_handle_sync (int *) ;
 int * ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (int *) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_orphan_add (int *,struct inode*) ;
 int ext4_orphan_del (int *,struct inode*) ;
 int ext4_writepage_trans_blocks (struct inode*) ;
 int filemap_write_and_wait_range (struct address_space*,int,int) ;
 int flush_aio_dio_completed_IO (struct inode*) ;
 scalar_t__ mapping_tagged (struct address_space*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int truncate_pagecache_range (struct inode*,int,int) ;
 int up_write (int *) ;

int ext4_ext_punch_hole(struct inode *inode, loff_t offset, loff_t length)
{
 struct super_block *sb = inode->i_sb;
 ext4_lblk_t first_block, stop_block;
 struct address_space *mapping = inode->i_mapping;
 handle_t *handle;
 loff_t first_page, last_page, page_len;
 loff_t first_page_offset, last_page_offset;
 int credits, err = 0;





 if (mapping->nrpages && mapping_tagged(mapping, PAGECACHE_TAG_DIRTY)) {
  err = filemap_write_and_wait_range(mapping,
   offset, offset + length - 1);

  if (err)
   return err;
 }

 mutex_lock(&inode->i_mutex);

 if (IS_APPEND(inode) || IS_IMMUTABLE(inode)) {
  err = -EPERM;
  goto out_mutex;
 }
 if (IS_SWAPFILE(inode)) {
  err = -ETXTBSY;
  goto out_mutex;
 }


 if (offset >= inode->i_size)
  goto out_mutex;





 if (offset + length > inode->i_size) {
  length = inode->i_size +
     PAGE_CACHE_SIZE - (inode->i_size & (PAGE_CACHE_SIZE - 1)) -
     offset;
 }

 first_page = (offset + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
 last_page = (offset + length) >> PAGE_CACHE_SHIFT;

 first_page_offset = first_page << PAGE_CACHE_SHIFT;
 last_page_offset = last_page << PAGE_CACHE_SHIFT;


 if (last_page_offset > first_page_offset) {
  truncate_pagecache_range(inode, first_page_offset,
      last_page_offset - 1);
 }


 err = flush_aio_dio_completed_IO(inode);
 if (err)
  goto out_mutex;

 credits = ext4_writepage_trans_blocks(inode);
 handle = ext4_journal_start(inode, credits);
 if (IS_ERR(handle)) {
  err = PTR_ERR(handle);
  goto out_mutex;
 }

 err = ext4_orphan_add(handle, inode);
 if (err)
  goto out;







 if (first_page > last_page) {




  err = ext4_discard_partial_page_buffers(handle,
   mapping, offset, length, 0);

  if (err)
   goto out;
 } else {




  page_len = first_page_offset - offset;
  if (page_len > 0) {
   err = ext4_discard_partial_page_buffers(handle, mapping,
         offset, page_len, 0);
   if (err)
    goto out;
  }





  page_len = offset + length - last_page_offset;
  if (page_len > 0) {
   err = ext4_discard_partial_page_buffers(handle, mapping,
     last_page_offset, page_len, 0);
   if (err)
    goto out;
  }
 }





 if (inode->i_size >> PAGE_CACHE_SHIFT == last_page &&
    inode->i_size % PAGE_CACHE_SIZE != 0) {

  page_len = PAGE_CACHE_SIZE -
   (inode->i_size & (PAGE_CACHE_SIZE - 1));

  if (page_len > 0) {
   err = ext4_discard_partial_page_buffers(handle,
     mapping, inode->i_size, page_len, 0);

   if (err)
    goto out;
  }
 }

 first_block = (offset + sb->s_blocksize - 1) >>
  EXT4_BLOCK_SIZE_BITS(sb);
 stop_block = (offset + length) >> EXT4_BLOCK_SIZE_BITS(sb);


 if (first_block >= stop_block)
  goto out;

 down_write(&EXT4_I(inode)->i_data_sem);
 ext4_ext_invalidate_cache(inode);
 ext4_discard_preallocations(inode);

 err = ext4_ext_remove_space(inode, first_block, stop_block - 1);

 ext4_ext_invalidate_cache(inode);
 ext4_discard_preallocations(inode);

 if (IS_SYNC(inode))
  ext4_handle_sync(handle);

 up_write(&EXT4_I(inode)->i_data_sem);

out:
 ext4_orphan_del(handle, inode);
 inode->i_mtime = inode->i_ctime = ext4_current_time(inode);
 ext4_mark_inode_dirty(handle, inode);
 ext4_journal_stop(handle);
out_mutex:
 mutex_unlock(&inode->i_mutex);
 return err;
}
