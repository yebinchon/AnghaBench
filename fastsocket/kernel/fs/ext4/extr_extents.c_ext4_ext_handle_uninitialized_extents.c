
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; int i_ino; } ;
struct ext4_ext_path {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; int b_bdev; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_lblk_t ;
struct TYPE_5__ {scalar_t__ flag; } ;
typedef TYPE_2__ ext4_io_end_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_6__ {int i_aiodio_unwritten; TYPE_2__* cur_aio_dio; } ;
struct TYPE_4__ {int s_bdev; } ;


 scalar_t__ DIO_AIO_UNWRITTEN ;
 int EXT4_GET_BLOCKS_CREATE ;
 int EXT4_GET_BLOCKS_DELALLOC_RESERVE ;
 int EXT4_GET_BLOCKS_DIO_CONVERT_EXT ;
 int EXT4_GET_BLOCKS_DIO_CREATE_EXT ;
 int EXT4_GET_BLOCKS_METADATA_NOFAIL ;
 int EXT4_GET_BLOCKS_UNINIT_EXT ;
 TYPE_3__* EXT4_I (struct inode*) ;
 int EXT4_STATE_DIO_UNWRITTEN ;
 int atomic_inc (int *) ;
 int check_eofblocks_fl (int *,struct inode*,scalar_t__,struct ext4_ext_path*,unsigned int) ;
 int ext4_convert_unwritten_extents_dio (int *,struct inode*,scalar_t__,unsigned int,struct ext4_ext_path*) ;
 int ext4_da_update_reserve_space (struct inode*,unsigned int,int ) ;
 int ext4_ext_convert_to_initialized (int *,struct inode*,struct ext4_ext_path*,scalar_t__,unsigned int,int) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 int ext4_ext_show_leaf (struct inode*,struct ext4_ext_path*) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_split_unwritten_extents (int *,struct inode*,struct ext4_ext_path*,scalar_t__,unsigned int,int) ;
 int ext4_update_inode_fsync_trans (int *,struct inode*,int) ;
 int ext_debug (char*,int ,unsigned long long,unsigned int,int,unsigned int) ;
 int kfree (struct ext4_ext_path*) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int set_buffer_new (struct buffer_head*) ;
 int set_buffer_unwritten (struct buffer_head*) ;
 int unmap_underlying_metadata_blocks (int ,scalar_t__,unsigned int) ;

__attribute__((used)) static int
ext4_ext_handle_uninitialized_extents(handle_t *handle, struct inode *inode,
   ext4_lblk_t iblock, unsigned int max_blocks,
   struct ext4_ext_path *path, int flags,
   unsigned int allocated, struct buffer_head *bh_result,
   ext4_fsblk_t newblock)
{
 int ret = 0;
 int err = 0;
 ext4_io_end_t *io = EXT4_I(inode)->cur_aio_dio;

 ext_debug("ext4_ext_handle_uninitialized_extents: inode %lu, logical"
    "block %llu, max_blocks %u, flags %d, allocated %u",
    inode->i_ino, (unsigned long long)iblock, max_blocks,
    flags, allocated);
 ext4_ext_show_leaf(inode, path);





 flags |= EXT4_GET_BLOCKS_METADATA_NOFAIL;


 if ((flags & ~EXT4_GET_BLOCKS_METADATA_NOFAIL) ==
     EXT4_GET_BLOCKS_DIO_CREATE_EXT) {
  ret = ext4_split_unwritten_extents(handle,
      inode, path, iblock,
      max_blocks, flags);





  if (io && (io->flag != DIO_AIO_UNWRITTEN)) {
   io->flag = DIO_AIO_UNWRITTEN;
   atomic_inc(&EXT4_I(inode)->i_aiodio_unwritten);
  } else
   ext4_set_inode_state(inode, EXT4_STATE_DIO_UNWRITTEN);
  goto out;
 }

 if ((flags & ~EXT4_GET_BLOCKS_METADATA_NOFAIL) ==
     EXT4_GET_BLOCKS_DIO_CONVERT_EXT) {
  ret = ext4_convert_unwritten_extents_dio(handle, inode,
        iblock, max_blocks,
        path);
  if (ret >= 0) {
   ext4_update_inode_fsync_trans(handle, inode, 1);
   err = check_eofblocks_fl(handle, inode, iblock, path,
       max_blocks);
  } else
   err = ret;
  goto out2;
 }





 if (flags & EXT4_GET_BLOCKS_UNINIT_EXT)
  goto map_out;


 if ((flags & EXT4_GET_BLOCKS_CREATE) == 0) {







  set_buffer_unwritten(bh_result);
  goto out1;
 }


 ret = ext4_ext_convert_to_initialized(handle, inode,
      path, iblock,
      max_blocks,
      flags);
 if (ret >= 0) {
  ext4_update_inode_fsync_trans(handle, inode, 1);
  err = check_eofblocks_fl(handle, inode, iblock, path, max_blocks);
  if (err < 0)
   goto out2;
 }
out:
 if (ret <= 0) {
  err = ret;
  goto out2;
 } else
  allocated = ret;
 set_buffer_new(bh_result);







 if (allocated > max_blocks) {
  unmap_underlying_metadata_blocks(inode->i_sb->s_bdev,
     newblock + max_blocks,
     allocated - max_blocks);
  allocated = max_blocks;
 }
 if (flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE)
  ext4_da_update_reserve_space(inode, allocated, 0);

map_out:
 set_buffer_mapped(bh_result);
out1:
 if (allocated > max_blocks)
  allocated = max_blocks;
 ext4_ext_show_leaf(inode, path);
 bh_result->b_bdev = inode->i_sb->s_bdev;
 bh_result->b_blocknr = newblock;
out2:
 if (path) {
  ext4_ext_drop_refs(path);
  kfree(path);
 }
 return err ? err : allocated;
}
