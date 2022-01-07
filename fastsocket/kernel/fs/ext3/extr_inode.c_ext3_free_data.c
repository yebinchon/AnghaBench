
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
typedef int handle_t ;
typedef scalar_t__ ext3_fsblk_t ;
typedef int __le32 ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 scalar_t__ bh2jh (struct buffer_head*) ;
 int ext3_clear_blocks (int *,struct inode*,struct buffer_head*,scalar_t__,unsigned long,int *,int *) ;
 int ext3_error (int ,char*,char*,int ,unsigned long long) ;
 int ext3_journal_dirty_metadata (int *,struct buffer_head*) ;
 int ext3_journal_get_write_access (int *,struct buffer_head*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void ext3_free_data(handle_t *handle, struct inode *inode,
      struct buffer_head *this_bh,
      __le32 *first, __le32 *last)
{
 ext3_fsblk_t block_to_free = 0;
 unsigned long count = 0;
 __le32 *block_to_free_p = ((void*)0);


 ext3_fsblk_t nr;
 __le32 *p;

 int err;

 if (this_bh) {
  BUFFER_TRACE(this_bh, "get_write_access");
  err = ext3_journal_get_write_access(handle, this_bh);


  if (err)
   return;
 }

 for (p = first; p < last; p++) {
  nr = le32_to_cpu(*p);
  if (nr) {

   if (count == 0) {
    block_to_free = nr;
    block_to_free_p = p;
    count = 1;
   } else if (nr == block_to_free + count) {
    count++;
   } else {
    ext3_clear_blocks(handle, inode, this_bh,
        block_to_free,
        count, block_to_free_p, p);
    block_to_free = nr;
    block_to_free_p = p;
    count = 1;
   }
  }
 }

 if (count > 0)
  ext3_clear_blocks(handle, inode, this_bh, block_to_free,
      count, block_to_free_p, p);

 if (this_bh) {
  BUFFER_TRACE(this_bh, "call ext3_journal_dirty_metadata");







  if (bh2jh(this_bh))
   ext3_journal_dirty_metadata(handle, this_bh);
  else
   ext3_error(inode->i_sb, "ext3_free_data",
       "circular indirect block detected, "
       "inode=%lu, block=%llu",
       inode->i_ino,
       (unsigned long long)this_bh->b_blocknr);
 }
}
