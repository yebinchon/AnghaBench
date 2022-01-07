
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {unsigned int i_blkbits; int i_ino; } ;
struct buffer_head {unsigned int b_size; } ;
typedef int sector_t ;
typedef int handle_t ;


 unsigned int DIO_MAX_BLOCKS ;
 int EXT4_GET_BLOCKS_DIO_CREATE_EXT ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int ext4_chunk_trans_blocks (struct inode*,unsigned int) ;
 int ext4_debug (char*,int ,int) ;
 int ext4_get_blocks (int *,struct inode*,int ,unsigned int,struct buffer_head*,int) ;
 int * ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (int *) ;

__attribute__((used)) static int ext4_get_block_dio_write(struct inode *inode, sector_t iblock,
     struct buffer_head *bh_result, int create)
{
 handle_t *handle = ((void*)0);
 int ret = 0;
 unsigned max_blocks = bh_result->b_size >> inode->i_blkbits;
 int dio_credits;

 ext4_debug("ext4_get_block_dio_write: inode %lu, create flag %d\n",
     inode->i_ino, create);
 create = EXT4_GET_BLOCKS_DIO_CREATE_EXT;

 if (max_blocks > DIO_MAX_BLOCKS)
  max_blocks = DIO_MAX_BLOCKS;
 dio_credits = ext4_chunk_trans_blocks(inode, max_blocks);
 handle = ext4_journal_start(inode, dio_credits);
 if (IS_ERR(handle)) {
  ret = PTR_ERR(handle);
  goto out;
 }
 ret = ext4_get_blocks(handle, inode, iblock, max_blocks, bh_result,
         create);
 if (ret > 0) {
  bh_result->b_size = (ret << inode->i_blkbits);
  ret = 0;
 }
 ext4_journal_stop(handle);
out:
 return ret;
}
