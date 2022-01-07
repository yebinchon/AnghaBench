
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct inode {int i_sb; int i_mode; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;
typedef scalar_t__ __le32 ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EXT4_FREE_BLOCKS_METADATA ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int blocks_for_truncate (struct inode*) ;
 int ext4_forget (int *,int,struct inode*,struct buffer_head*,scalar_t__) ;
 int ext4_free_blocks (int *,struct inode*,int ,unsigned long,int) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_truncate_restart_trans (int *,struct inode*,int ) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 struct buffer_head* sb_find_get_block (int ,scalar_t__) ;
 scalar_t__ try_to_extend_transaction (int *,struct inode*) ;

__attribute__((used)) static void ext4_clear_blocks(handle_t *handle, struct inode *inode,
         struct buffer_head *bh,
         ext4_fsblk_t block_to_free,
         unsigned long count, __le32 *first,
         __le32 *last)
{
 __le32 *p;
 int is_metadata = 0;
 int flags = 0;

 if (S_ISDIR(inode->i_mode) || S_ISLNK(inode->i_mode)) {
  flags |= EXT4_FREE_BLOCKS_METADATA;
  is_metadata = 1;
 }


 if (try_to_extend_transaction(handle, inode)) {
  if (bh) {
   BUFFER_TRACE(bh, "call ext4_handle_dirty_metadata");
   ext4_handle_dirty_metadata(handle, inode, bh);
  }
  ext4_mark_inode_dirty(handle, inode);
  ext4_truncate_restart_trans(handle, inode,
         blocks_for_truncate(inode));
  if (bh) {
   BUFFER_TRACE(bh, "retaking write access");
   ext4_journal_get_write_access(handle, bh);
  }
 }
 for (p = first; p < last; p++) {
  u32 nr = le32_to_cpu(*p);
  if (nr) {
   struct buffer_head *tbh;

   *p = 0;
   tbh = sb_find_get_block(inode->i_sb, nr);
   ext4_forget(handle, is_metadata, inode, tbh, nr);
  }
 }

 ext4_free_blocks(handle, inode, block_to_free, count, flags);
}
