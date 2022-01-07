
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned int i_blkbits; int i_sb; } ;
struct buffer_head {unsigned int b_size; } ;
typedef int sector_t ;
typedef int handle_t ;


 scalar_t__ DIO_CREDITS ;
 unsigned int DIO_MAX_BLOCKS ;
 int EXT3_QUOTA_TRANS_BLOCKS (int ) ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ext3_get_blocks_handle (int *,struct inode*,int ,unsigned int,struct buffer_head*,int) ;
 int * ext3_journal_current_handle () ;
 int * ext3_journal_start (struct inode*,scalar_t__) ;
 int ext3_journal_stop (int *) ;

__attribute__((used)) static int ext3_get_block(struct inode *inode, sector_t iblock,
   struct buffer_head *bh_result, int create)
{
 handle_t *handle = ext3_journal_current_handle();
 int ret = 0, started = 0;
 unsigned max_blocks = bh_result->b_size >> inode->i_blkbits;

 if (create && !handle) {
  if (max_blocks > DIO_MAX_BLOCKS)
   max_blocks = DIO_MAX_BLOCKS;
  handle = ext3_journal_start(inode, DIO_CREDITS +
    2 * EXT3_QUOTA_TRANS_BLOCKS(inode->i_sb));
  if (IS_ERR(handle)) {
   ret = PTR_ERR(handle);
   goto out;
  }
  started = 1;
 }

 ret = ext3_get_blocks_handle(handle, inode, iblock,
     max_blocks, bh_result, create);
 if (ret > 0) {
  bh_result->b_size = (ret << inode->i_blkbits);
  ret = 0;
 }
 if (started)
  ext3_journal_stop(handle);
out:
 return ret;
}
