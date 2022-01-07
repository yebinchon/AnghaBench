
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mb_cache_entry {int dummy; } ;
struct inode {int i_ino; int i_sb; } ;
struct buffer_head {int b_blocknr; int b_bdev; int b_count; } ;
struct TYPE_4__ {int xattr_sem; scalar_t__ i_file_acl; } ;
struct TYPE_3__ {scalar_t__ h_magic; scalar_t__ h_blocks; scalar_t__ h_refcount; } ;


 TYPE_2__* EXT2_I (struct inode*) ;
 int EXT2_XATTR_MAGIC ;
 TYPE_1__* HDR (struct buffer_head*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int atomic_read (int *) ;
 int bforget (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ cpu_to_le32 (int) ;
 int down_write (int *) ;
 int ea_bdebug (struct buffer_head*,char*,int ) ;
 int ext2_error (int ,char*,char*,int ,scalar_t__) ;
 int ext2_free_blocks (struct inode*,scalar_t__,int) ;
 int ext2_xattr_cache ;
 int get_bh (struct buffer_head*) ;
 int le32_add_cpu (scalar_t__*,int) ;
 int le32_to_cpu (scalar_t__) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mb_cache_entry_free (struct mb_cache_entry*) ;
 struct mb_cache_entry* mb_cache_entry_get (int ,int ,int ) ;
 int mb_cache_entry_release (struct mb_cache_entry*) ;
 struct buffer_head* sb_bread (int ,scalar_t__) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 int up_write (int *) ;
 int vfs_dq_free_block (struct inode*,int) ;

void
ext2_xattr_delete_inode(struct inode *inode)
{
 struct buffer_head *bh = ((void*)0);
 struct mb_cache_entry *ce;

 down_write(&EXT2_I(inode)->xattr_sem);
 if (!EXT2_I(inode)->i_file_acl)
  goto cleanup;
 bh = sb_bread(inode->i_sb, EXT2_I(inode)->i_file_acl);
 if (!bh) {
  ext2_error(inode->i_sb, "ext2_xattr_delete_inode",
   "inode %ld: block %d read error", inode->i_ino,
   EXT2_I(inode)->i_file_acl);
  goto cleanup;
 }
 ea_bdebug(bh, "b_count=%d", atomic_read(&(bh->b_count)));
 if (HDR(bh)->h_magic != cpu_to_le32(EXT2_XATTR_MAGIC) ||
     HDR(bh)->h_blocks != cpu_to_le32(1)) {
  ext2_error(inode->i_sb, "ext2_xattr_delete_inode",
   "inode %ld: bad block %d", inode->i_ino,
   EXT2_I(inode)->i_file_acl);
  goto cleanup;
 }
 ce = mb_cache_entry_get(ext2_xattr_cache, bh->b_bdev, bh->b_blocknr);
 lock_buffer(bh);
 if (HDR(bh)->h_refcount == cpu_to_le32(1)) {
  if (ce)
   mb_cache_entry_free(ce);
  ext2_free_blocks(inode, EXT2_I(inode)->i_file_acl, 1);
  get_bh(bh);
  bforget(bh);
  unlock_buffer(bh);
 } else {
  le32_add_cpu(&HDR(bh)->h_refcount, -1);
  if (ce)
   mb_cache_entry_release(ce);
  ea_bdebug(bh, "refcount now=%d",
   le32_to_cpu(HDR(bh)->h_refcount));
  unlock_buffer(bh);
  mark_buffer_dirty(bh);
  if (IS_SYNC(inode))
   sync_dirty_buffer(bh);
  vfs_dq_free_block(inode, 1);
 }
 EXT2_I(inode)->i_file_acl = 0;

cleanup:
 brelse(bh);
 up_write(&EXT2_I(inode)->xattr_sem);
}
