
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
struct buffer_head {int b_blocknr; } ;
typedef scalar_t__ sector_t ;
typedef int handle_t ;
struct TYPE_2__ {int i_delalloc_reserved_flag; int i_data_sem; } ;


 int EXT4_GET_BLOCKS_CREATE ;
 int EXT4_GET_BLOCKS_DELALLOC_RESERVE ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_STATE_EXT_MIGRATE ;
 scalar_t__ buffer_mapped (struct buffer_head*) ;
 scalar_t__ buffer_new (struct buffer_head*) ;
 int check_block_validity (struct inode*,char*,scalar_t__,int ,int) ;
 int clear_buffer_mapped (struct buffer_head*) ;
 int clear_buffer_unwritten (struct buffer_head*) ;
 int down_read (int *) ;
 int down_write (int *) ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_da_update_reserve_space (struct inode*,int,int) ;
 int ext4_ext_get_blocks (int *,struct inode*,scalar_t__,unsigned int,struct buffer_head*,int) ;
 int ext4_ind_get_blocks (int *,struct inode*,scalar_t__,unsigned int,struct buffer_head*,int) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 int ext_debug (char*,int ,int,unsigned int,unsigned long) ;
 int up_read (int *) ;
 int up_write (int *) ;

int ext4_get_blocks(handle_t *handle, struct inode *inode, sector_t block,
      unsigned int max_blocks, struct buffer_head *bh,
      int flags)
{
 int retval;

 clear_buffer_mapped(bh);
 clear_buffer_unwritten(bh);

 ext_debug("ext4_get_blocks(): inode %lu, flag %d, max_blocks %u,"
    "logical block %lu\n", inode->i_ino, flags, max_blocks,
    (unsigned long)block);




 down_read((&EXT4_I(inode)->i_data_sem));
 if (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)) {
  retval = ext4_ext_get_blocks(handle, inode, block, max_blocks,
    bh, 0);
 } else {
  retval = ext4_ind_get_blocks(handle, inode, block, max_blocks,
          bh, 0);
 }
 up_read((&EXT4_I(inode)->i_data_sem));

 if (retval > 0 && buffer_mapped(bh)) {
  int ret = check_block_validity(inode, "file system corruption",
            block, bh->b_blocknr, retval);
  if (ret != 0)
   return ret;
 }


 if ((flags & EXT4_GET_BLOCKS_CREATE) == 0)
  return retval;
 if (retval > 0 && buffer_mapped(bh))
  return retval;
 clear_buffer_unwritten(bh);







 down_write((&EXT4_I(inode)->i_data_sem));







 if (flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE)
  EXT4_I(inode)->i_delalloc_reserved_flag = 1;




 if (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)) {
  retval = ext4_ext_get_blocks(handle, inode, block, max_blocks,
           bh, flags);
 } else {
  retval = ext4_ind_get_blocks(handle, inode, block,
          max_blocks, bh, flags);

  if (retval > 0 && buffer_new(bh)) {





   ext4_clear_inode_state(inode, EXT4_STATE_EXT_MIGRATE);
  }







  if ((retval > 0) &&
   (flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE))
   ext4_da_update_reserve_space(inode, retval, 1);
 }
 if (flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE)
  EXT4_I(inode)->i_delalloc_reserved_flag = 0;

 up_write((&EXT4_I(inode)->i_data_sem));
 if (retval > 0 && buffer_mapped(bh)) {
  int ret = check_block_validity(inode, "file system "
            "corruption after allocation",
            block, bh->b_blocknr, retval);
  if (ret != 0)
   return ret;
 }
 return retval;
}
