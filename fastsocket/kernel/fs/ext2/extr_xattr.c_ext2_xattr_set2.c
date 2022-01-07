
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct mb_cache_entry {int dummy; } ;
struct inode {int i_ctime; struct super_block* i_sb; } ;
struct ext2_xattr_header {scalar_t__ h_refcount; } ;
struct buffer_head {int b_blocknr; int b_bdev; int b_size; int b_data; } ;
typedef int ext2_fsblk_t ;
struct TYPE_2__ {int i_file_acl; int i_block_group; } ;


 int CURRENT_TIME_SEC ;
 int EDQUOT ;
 int EIO ;
 int ENOSPC ;
 TYPE_1__* EXT2_I (struct inode*) ;
 struct ext2_xattr_header* HDR (struct buffer_head*) ;
 scalar_t__ IS_SYNC (struct inode*) ;
 int bforget (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_req (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 scalar_t__ cpu_to_le32 (int) ;
 int ea_bdebug (struct buffer_head*,char*,...) ;
 int ea_idebug (struct inode*,char*,int) ;
 int ext2_free_blocks (struct inode*,int,int) ;
 int ext2_group_first_block_no (struct super_block*,int ) ;
 int ext2_new_block (struct inode*,int ,int*) ;
 int ext2_sync_inode (struct inode*) ;
 int ext2_xattr_cache ;
 struct buffer_head* ext2_xattr_cache_find (struct inode*,struct ext2_xattr_header*) ;
 int ext2_xattr_cache_insert (struct buffer_head*) ;
 int ext2_xattr_update_super_block (struct super_block*) ;
 int get_bh (struct buffer_head*) ;
 int le32_add_cpu (scalar_t__*,int) ;
 int le32_to_cpu (scalar_t__) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mark_inode_dirty (struct inode*) ;
 int mb_cache_entry_free (struct mb_cache_entry*) ;
 struct mb_cache_entry* mb_cache_entry_get (int ,int ,int) ;
 int mb_cache_entry_release (struct mb_cache_entry*) ;
 int memcpy (int ,struct ext2_xattr_header*,int ) ;
 struct buffer_head* sb_getblk (struct super_block*,int) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;
 scalar_t__ vfs_dq_alloc_block (struct inode*,int) ;
 int vfs_dq_free_block (struct inode*,int) ;

__attribute__((used)) static int
ext2_xattr_set2(struct inode *inode, struct buffer_head *old_bh,
  struct ext2_xattr_header *header)
{
 struct super_block *sb = inode->i_sb;
 struct buffer_head *new_bh = ((void*)0);
 int error;

 if (header) {
  new_bh = ext2_xattr_cache_find(inode, header);
  if (new_bh) {

   if (new_bh == old_bh) {
    ea_bdebug(new_bh, "keeping this block");
   } else {


    ea_bdebug(new_bh, "reusing block");

    error = -EDQUOT;
    if (vfs_dq_alloc_block(inode, 1)) {
     unlock_buffer(new_bh);
     goto cleanup;
    }
    le32_add_cpu(&HDR(new_bh)->h_refcount, 1);
    ea_bdebug(new_bh, "refcount now=%d",
     le32_to_cpu(HDR(new_bh)->h_refcount));
   }
   unlock_buffer(new_bh);
  } else if (old_bh && header == HDR(old_bh)) {


   new_bh = old_bh;
   get_bh(new_bh);
   ext2_xattr_cache_insert(new_bh);
  } else {

   ext2_fsblk_t goal = ext2_group_first_block_no(sb,
      EXT2_I(inode)->i_block_group);
   int block = ext2_new_block(inode, goal, &error);
   if (error)
    goto cleanup;
   ea_idebug(inode, "creating block %d", block);

   new_bh = sb_getblk(sb, block);
   if (!new_bh) {
    ext2_free_blocks(inode, block, 1);
    error = -EIO;
    goto cleanup;
   }
   lock_buffer(new_bh);
   memcpy(new_bh->b_data, header, new_bh->b_size);
   set_buffer_uptodate(new_bh);
   unlock_buffer(new_bh);
   ext2_xattr_cache_insert(new_bh);

   ext2_xattr_update_super_block(sb);
  }
  mark_buffer_dirty(new_bh);
  if (IS_SYNC(inode)) {
   sync_dirty_buffer(new_bh);
   error = -EIO;
   if (buffer_req(new_bh) && !buffer_uptodate(new_bh))
    goto cleanup;
  }
 }


 EXT2_I(inode)->i_file_acl = new_bh ? new_bh->b_blocknr : 0;
 inode->i_ctime = CURRENT_TIME_SEC;
 if (IS_SYNC(inode)) {
  error = ext2_sync_inode (inode);



  if (error && error != -ENOSPC) {
   if (new_bh && new_bh != old_bh)
    vfs_dq_free_block(inode, 1);
   goto cleanup;
  }
 } else
  mark_inode_dirty(inode);

 error = 0;
 if (old_bh && old_bh != new_bh) {
  struct mb_cache_entry *ce;





  ce = mb_cache_entry_get(ext2_xattr_cache, old_bh->b_bdev,
     old_bh->b_blocknr);
  lock_buffer(old_bh);
  if (HDR(old_bh)->h_refcount == cpu_to_le32(1)) {

   if (ce)
    mb_cache_entry_free(ce);
   ea_bdebug(old_bh, "freeing");
   ext2_free_blocks(inode, old_bh->b_blocknr, 1);


   get_bh(old_bh);
   bforget(old_bh);
  } else {

   le32_add_cpu(&HDR(old_bh)->h_refcount, -1);
   if (ce)
    mb_cache_entry_release(ce);
   vfs_dq_free_block(inode, 1);
   mark_buffer_dirty(old_bh);
   ea_bdebug(old_bh, "refcount now=%d",
    le32_to_cpu(HDR(old_bh)->h_refcount));
  }
  unlock_buffer(old_bh);
 }

cleanup:
 brelse(new_bh);

 return error;
}
