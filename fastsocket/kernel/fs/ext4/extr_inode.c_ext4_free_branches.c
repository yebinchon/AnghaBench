
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;
struct buffer_head {int b_blocknr; scalar_t__ b_data; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;
typedef scalar_t__ __le32 ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EXT4_ADDR_PER_BLOCK (int ) ;
 int EXT4_FREE_BLOCKS_METADATA ;
 int blocks_for_truncate (struct inode*) ;
 int ext4_error (int ,char*,int ,int ) ;
 int ext4_forget (int *,int,struct inode*,struct buffer_head*,int ) ;
 int ext4_free_blocks (int *,struct inode*,int ,int,int ) ;
 int ext4_free_data (int *,struct inode*,struct buffer_head*,scalar_t__*,scalar_t__*) ;
 int ext4_handle_dirty_metadata (int *,struct inode*,struct buffer_head*) ;
 scalar_t__ ext4_handle_is_aborted (int *) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_mark_inode_dirty (int *,struct inode*) ;
 int ext4_truncate_restart_trans (int *,struct inode*,int ) ;
 int le32_to_cpu (scalar_t__) ;
 struct buffer_head* sb_bread (int ,int ) ;
 scalar_t__ try_to_extend_transaction (int *,struct inode*) ;

__attribute__((used)) static void ext4_free_branches(handle_t *handle, struct inode *inode,
          struct buffer_head *parent_bh,
          __le32 *first, __le32 *last, int depth)
{
 ext4_fsblk_t nr;
 __le32 *p;

 if (ext4_handle_is_aborted(handle))
  return;

 if (depth--) {
  struct buffer_head *bh;
  int addr_per_block = EXT4_ADDR_PER_BLOCK(inode->i_sb);
  p = last;
  while (--p >= first) {
   nr = le32_to_cpu(*p);
   if (!nr)
    continue;


   bh = sb_bread(inode->i_sb, nr);





   if (!bh) {
    ext4_error(inode->i_sb,
        "Read failure, inode=%lu, block=%llu",
        inode->i_ino, nr);
    continue;
   }


   BUFFER_TRACE(bh, "free child branches");
   ext4_free_branches(handle, inode, bh,
     (__le32 *) bh->b_data,
     (__le32 *) bh->b_data + addr_per_block,
     depth);
   ext4_forget(handle, 1, inode, bh, bh->b_blocknr);
   if (ext4_handle_is_aborted(handle))
    return;
   if (try_to_extend_transaction(handle, inode)) {
    ext4_mark_inode_dirty(handle, inode);
    ext4_truncate_restart_trans(handle, inode,
         blocks_for_truncate(inode));
   }

   ext4_free_blocks(handle, inode, nr, 1,
      EXT4_FREE_BLOCKS_METADATA);

   if (parent_bh) {




    BUFFER_TRACE(parent_bh, "get_write_access");
    if (!ext4_journal_get_write_access(handle,
           parent_bh)){
     *p = 0;
     BUFFER_TRACE(parent_bh,
     "call ext4_handle_dirty_metadata");
     ext4_handle_dirty_metadata(handle,
           inode,
           parent_bh);
    }
   }
  }
 } else {

  BUFFER_TRACE(parent_bh, "free data blocks");
  ext4_free_data(handle, inode, parent_bh, first, last);
 }
}
