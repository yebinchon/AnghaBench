
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mb_cache_entry {int dummy; } ;
struct inode {int i_sb; } ;
struct buffer_head {int b_blocknr; int b_bdev; } ;
typedef int handle_t ;
struct TYPE_2__ {scalar_t__ h_refcount; } ;


 TYPE_1__* BHDR (struct buffer_head*) ;
 int EXT4_FREE_BLOCKS_METADATA ;
 scalar_t__ IS_SYNC (struct inode*) ;
 scalar_t__ cpu_to_le32 (int) ;
 int ea_bdebug (struct buffer_head*,char*,...) ;
 int ext4_forget (int *,int,struct inode*,struct buffer_head*,int ) ;
 int ext4_free_blocks (int *,struct inode*,int ,int,int ) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 int ext4_handle_sync (int *) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_std_error (int ,int) ;
 int ext4_xattr_cache ;
 int get_bh (struct buffer_head*) ;
 int le32_add_cpu (scalar_t__*,int) ;
 int le32_to_cpu (scalar_t__) ;
 int lock_buffer (struct buffer_head*) ;
 int mb_cache_entry_free (struct mb_cache_entry*) ;
 struct mb_cache_entry* mb_cache_entry_get (int ,int ,int ) ;
 int mb_cache_entry_release (struct mb_cache_entry*) ;
 int unlock_buffer (struct buffer_head*) ;
 int vfs_dq_free_block (struct inode*,int) ;

__attribute__((used)) static void
ext4_xattr_release_block(handle_t *handle, struct inode *inode,
    struct buffer_head *bh)
{
 struct mb_cache_entry *ce = ((void*)0);
 int error = 0;

 ce = mb_cache_entry_get(ext4_xattr_cache, bh->b_bdev, bh->b_blocknr);
 error = ext4_journal_get_write_access(handle, bh);
 if (error)
  goto out;

 lock_buffer(bh);
 if (BHDR(bh)->h_refcount == cpu_to_le32(1)) {
  ea_bdebug(bh, "refcount now=0; freeing");
  if (ce)
   mb_cache_entry_free(ce);
  ext4_free_blocks(handle, inode, bh->b_blocknr, 1,
     EXT4_FREE_BLOCKS_METADATA);
  get_bh(bh);
  ext4_forget(handle, 1, inode, bh, bh->b_blocknr);
 } else {
  le32_add_cpu(&BHDR(bh)->h_refcount, -1);
  error = ext4_handle_dirty_metadata(handle, inode, bh);
  if (IS_SYNC(inode))
   ext4_handle_sync(handle);
  vfs_dq_free_block(inode, 1);
  ea_bdebug(bh, "refcount now=%d; releasing",
     le32_to_cpu(BHDR(bh)->h_refcount));
  if (ce)
   mb_cache_entry_release(ce);
 }
 unlock_buffer(bh);
out:
 ext4_std_error(inode->i_sb, error);
 return;
}
