
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef int ext3_fsblk_t ;
typedef scalar_t__ __le32 ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int ext3_forget (int *,int ,struct inode*,struct buffer_head*,scalar_t__) ;
 int ext3_free_blocks (int *,struct inode*,int ,unsigned long) ;
 int ext3_journal_dirty_metadata (int *,struct buffer_head*) ;
 int ext3_journal_get_write_access (int *,struct buffer_head*) ;
 int ext3_mark_inode_dirty (int *,struct inode*) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 struct buffer_head* sb_find_get_block (int ,scalar_t__) ;
 int truncate_restart_transaction (int *,struct inode*) ;
 scalar_t__ try_to_extend_transaction (int *,struct inode*) ;

__attribute__((used)) static void ext3_clear_blocks(handle_t *handle, struct inode *inode,
  struct buffer_head *bh, ext3_fsblk_t block_to_free,
  unsigned long count, __le32 *first, __le32 *last)
{
 __le32 *p;
 if (try_to_extend_transaction(handle, inode)) {
  if (bh) {
   BUFFER_TRACE(bh, "call ext3_journal_dirty_metadata");
   ext3_journal_dirty_metadata(handle, bh);
  }
  ext3_mark_inode_dirty(handle, inode);
  truncate_restart_transaction(handle, inode);
  if (bh) {
   BUFFER_TRACE(bh, "retaking write access");
   ext3_journal_get_write_access(handle, bh);
  }
 }
 for (p = first; p < last; p++) {
  u32 nr = le32_to_cpu(*p);
  if (nr) {
   struct buffer_head *bh;

   *p = 0;
   bh = sb_find_get_block(inode->i_sb, nr);
   ext3_forget(handle, 0, inode, bh, nr);
  }
 }

 ext3_free_blocks(handle, inode, block_to_free, count);
}
