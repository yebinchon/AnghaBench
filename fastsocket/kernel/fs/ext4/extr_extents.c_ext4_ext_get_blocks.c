
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {unsigned int i_ino; TYPE_1__* i_sb; int i_mode; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_extent {void* ee_len; int ee_block; int ee_start_hi; int ee_start_lo; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; int p_block; } ;
struct ext4_allocation_request {unsigned short lleft; unsigned short lright; unsigned short goal; unsigned short logical; unsigned int len; scalar_t__ flags; struct inode* inode; int pright; int pleft; } ;
struct buffer_head {unsigned int b_blocknr; int b_bdev; int b_state; } ;
typedef int handle_t ;
typedef unsigned short ext4_lblk_t ;
struct TYPE_5__ {scalar_t__ flag; } ;
typedef TYPE_2__ ext4_io_end_t ;
typedef unsigned int ext4_fsblk_t ;
struct TYPE_6__ {int i_aiodio_unwritten; TYPE_2__* cur_aio_dio; } ;
struct TYPE_4__ {int s_bdev; } ;


 int BH_New ;
 scalar_t__ DIO_AIO_UNWRITTEN ;
 int EIO ;
 int EXT4_ERROR_INODE (struct inode*,char*,unsigned short,int,int ) ;
 int EXT4_FREE_BLOCKS_NO_QUOT_UPDATE ;
 int EXT4_GET_BLOCKS_CREATE ;
 int EXT4_GET_BLOCKS_DELALLOC_RESERVE ;
 int EXT4_GET_BLOCKS_DIO_CREATE_EXT ;
 int EXT4_GET_BLOCKS_METADATA_NOFAIL ;
 int EXT4_GET_BLOCKS_UNINIT_EXT ;
 TYPE_3__* EXT4_I (struct inode*) ;
 scalar_t__ EXT4_MB_HINT_DATA ;
 int EXT4_STATE_DIO_UNWRITTEN ;
 unsigned int EXT_INIT_MAX_LEN ;
 unsigned int EXT_UNINIT_MAX_LEN ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 scalar_t__ S_ISREG (int ) ;
 int __clear_bit (int ,int *) ;
 int atomic_inc (int *) ;
 int check_eofblocks_fl (int *,struct inode*,unsigned short,struct ext4_ext_path*,unsigned int) ;
 void* cpu_to_le16 (unsigned int) ;
 int cpu_to_le32 (unsigned short) ;
 int ext4_da_update_reserve_space (struct inode*,unsigned int,int) ;
 int ext4_discard_preallocations (struct inode*) ;
 int ext4_ext_check_overlap (struct inode*,struct ext4_extent*,struct ext4_ext_path*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 struct ext4_ext_path* ext4_ext_find_extent (struct inode*,unsigned short,int *) ;
 unsigned short ext4_ext_find_goal (struct inode*,struct ext4_ext_path*,unsigned short) ;
 void* ext4_ext_get_actual_len (struct ext4_extent*) ;
 int ext4_ext_handle_uninitialized_extents (int *,struct inode*,unsigned short,unsigned int,struct ext4_ext_path*,int,unsigned int,struct buffer_head*,unsigned int) ;
 scalar_t__ ext4_ext_in_cache (struct inode*,unsigned short,struct ext4_extent*) ;
 int ext4_ext_insert_extent (int *,struct inode*,struct ext4_ext_path*,struct ext4_extent*,int) ;
 int ext4_ext_is_uninitialized (struct ext4_extent*) ;
 int ext4_ext_mark_uninitialized (struct ext4_extent*) ;
 unsigned int ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_ext_put_gap_in_cache (struct inode*,struct ext4_ext_path*,unsigned short) ;
 int ext4_ext_put_in_cache (struct inode*,unsigned short,unsigned int,unsigned int) ;
 int ext4_ext_search_left (struct inode*,struct ext4_ext_path*,unsigned short*,int *) ;
 int ext4_ext_search_right (struct inode*,struct ext4_ext_path*,unsigned short*,int *) ;
 int ext4_ext_show_leaf (struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_store_pblock (struct ext4_extent*,unsigned int) ;
 int ext4_free_blocks (int *,struct inode*,unsigned int,void*,int) ;
 unsigned int ext4_mb_new_blocks (int *,struct ext4_allocation_request*,int*) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 int ext4_update_inode_fsync_trans (int *,struct inode*,int) ;
 int ext_debug (char*,unsigned short,unsigned int,unsigned int,...) ;
 int ext_depth (struct inode*) ;
 scalar_t__ in_range (unsigned short,unsigned short,unsigned short) ;
 int kfree (struct ext4_ext_path*) ;
 unsigned short le32_to_cpu (int ) ;
 int set_buffer_mapped (struct buffer_head*) ;
 int set_buffer_new (struct buffer_head*) ;
 scalar_t__ unlikely (int) ;

int ext4_ext_get_blocks(handle_t *handle, struct inode *inode,
   ext4_lblk_t iblock,
   unsigned int max_blocks, struct buffer_head *bh_result,
   int flags)
{
 struct ext4_ext_path *path = ((void*)0);
 struct ext4_extent_header *eh;
 struct ext4_extent newex, *ex;
 ext4_fsblk_t newblock;
 int err = 0, depth, ret;
 unsigned int allocated = 0;
 struct ext4_allocation_request ar;
 ext4_io_end_t *io = EXT4_I(inode)->cur_aio_dio;

 __clear_bit(BH_New, &bh_result->b_state);
 ext_debug("blocks %u/%u requested for inode %lu\n",
   iblock, max_blocks, inode->i_ino);


 if (ext4_ext_in_cache(inode, iblock, &newex)) {
  if (!newex.ee_start_lo && !newex.ee_start_hi) {
   if ((flags & EXT4_GET_BLOCKS_CREATE) == 0) {




    goto out2;
   }

  } else {

   newblock = iblock
       - le32_to_cpu(newex.ee_block)
       + ext4_ext_pblock(&newex);

   allocated = ext4_ext_get_actual_len(&newex) -
     (iblock - le32_to_cpu(newex.ee_block));
   goto out;
  }
 }


 path = ext4_ext_find_extent(inode, iblock, ((void*)0));
 if (IS_ERR(path)) {
  err = PTR_ERR(path);
  path = ((void*)0);
  goto out2;
 }

 depth = ext_depth(inode);






 if (unlikely(path[depth].p_ext == ((void*)0) && depth != 0)) {
  EXT4_ERROR_INODE(inode, "bad extent address "
     "iblock: %d, depth: %d pblock %lld",
     iblock, depth, path[depth].p_block);
  err = -EIO;
  goto out2;
 }
 eh = path[depth].p_hdr;

 ex = path[depth].p_ext;
 if (ex) {
  ext4_lblk_t ee_block = le32_to_cpu(ex->ee_block);
  ext4_fsblk_t ee_start = ext4_ext_pblock(ex);
  unsigned short ee_len;





  ee_len = ext4_ext_get_actual_len(ex);

  if (in_range(iblock, ee_block, ee_len)) {
   newblock = iblock - ee_block + ee_start;

   allocated = ee_len - (iblock - ee_block);
   ext_debug("%u fit into %u:%d -> %llu\n", iblock,
     ee_block, ee_len, newblock);





   if (!ext4_ext_is_uninitialized(ex)) {
    ext4_ext_put_in_cache(inode, ee_block,
     ee_len, ee_start);
    goto out;
   }
   ret = ext4_ext_handle_uninitialized_extents(
    handle, inode, iblock, max_blocks, path,
    flags, allocated, bh_result, newblock);
   return ret;
  }
 }





 if ((flags & EXT4_GET_BLOCKS_CREATE) == 0) {




  ext4_ext_put_gap_in_cache(inode, path, iblock);
  goto out2;
 }





 ar.lleft = iblock;
 err = ext4_ext_search_left(inode, path, &ar.lleft, &ar.pleft);
 if (err)
  goto out2;
 ar.lright = iblock;
 err = ext4_ext_search_right(inode, path, &ar.lright, &ar.pright);
 if (err)
  goto out2;







 if (max_blocks > EXT_INIT_MAX_LEN &&
     !(flags & EXT4_GET_BLOCKS_UNINIT_EXT))
  max_blocks = EXT_INIT_MAX_LEN;
 else if (max_blocks > EXT_UNINIT_MAX_LEN &&
   (flags & EXT4_GET_BLOCKS_UNINIT_EXT))
  max_blocks = EXT_UNINIT_MAX_LEN;


 newex.ee_block = cpu_to_le32(iblock);
 newex.ee_len = cpu_to_le16(max_blocks);
 err = ext4_ext_check_overlap(inode, &newex, path);
 if (err)
  allocated = ext4_ext_get_actual_len(&newex);
 else
  allocated = max_blocks;


 ar.inode = inode;
 ar.goal = ext4_ext_find_goal(inode, path, iblock);
 ar.logical = iblock;
 ar.len = allocated;
 if (S_ISREG(inode->i_mode))
  ar.flags = EXT4_MB_HINT_DATA;
 else

  ar.flags = 0;
 newblock = ext4_mb_new_blocks(handle, &ar, &err);
 if (!newblock)
  goto out2;
 ext_debug("allocate new block: goal %llu, found %llu/%u\n",
    ar.goal, newblock, allocated);


 ext4_ext_store_pblock(&newex, newblock);
 newex.ee_len = cpu_to_le16(ar.len);

 if (flags & EXT4_GET_BLOCKS_UNINIT_EXT){
  ext4_ext_mark_uninitialized(&newex);
  if ((flags & ~EXT4_GET_BLOCKS_METADATA_NOFAIL) ==
      EXT4_GET_BLOCKS_DIO_CREATE_EXT) {
   if (io && (io->flag != DIO_AIO_UNWRITTEN)) {
    io->flag = DIO_AIO_UNWRITTEN;
    atomic_inc(&EXT4_I(inode)->i_aiodio_unwritten);
   } else
    ext4_set_inode_state(inode,
           EXT4_STATE_DIO_UNWRITTEN);
  }
 }

 err = check_eofblocks_fl(handle, inode, iblock, path, ar.len);
 if (err)
  goto out2;

 err = ext4_ext_insert_extent(handle, inode, path, &newex, flags);
 if (err) {
  int fb_flags = flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE ?
   EXT4_FREE_BLOCKS_NO_QUOT_UPDATE : 0;



  ext4_discard_preallocations(inode);
  ext4_free_blocks(handle, inode, ext4_ext_pblock(&newex),
     ext4_ext_get_actual_len(&newex), fb_flags);
  goto out2;
 }


 newblock = ext4_ext_pblock(&newex);
 allocated = ext4_ext_get_actual_len(&newex);
 if (allocated > max_blocks)
  allocated = max_blocks;
 set_buffer_new(bh_result);





 if (flags & EXT4_GET_BLOCKS_DELALLOC_RESERVE)
  ext4_da_update_reserve_space(inode, allocated, 1);





 if ((flags & EXT4_GET_BLOCKS_UNINIT_EXT) == 0) {
  ext4_ext_put_in_cache(inode, iblock, allocated, newblock);
  ext4_update_inode_fsync_trans(handle, inode, 1);
 } else
  ext4_update_inode_fsync_trans(handle, inode, 0);
out:
 if (allocated > max_blocks)
  allocated = max_blocks;
 ext4_ext_show_leaf(inode, path);
 set_buffer_mapped(bh_result);
 bh_result->b_bdev = inode->i_sb->s_bdev;
 bh_result->b_blocknr = newblock;
out2:
 if (path) {
  ext4_ext_drop_refs(path);
  kfree(path);
 }

 return err ? err : allocated;
}
