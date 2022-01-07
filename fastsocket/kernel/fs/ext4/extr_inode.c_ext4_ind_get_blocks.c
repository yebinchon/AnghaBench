
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
typedef int ext4_lblk_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_8__ {struct buffer_head* bh; int key; int * p; } ;
typedef TYPE_1__ Indirect ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EIO ;
 int EXT4_GET_BLOCKS_CREATE ;
 int EXT4_INODE_EXTENTS ;
 int J_ASSERT (int) ;
 int brelse (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int ext4_alloc_branch (int *,struct inode*,int ,int,int*,scalar_t__,int *,TYPE_1__*) ;
 int ext4_blks_to_allocate (TYPE_1__*,int,unsigned int,int) ;
 int ext4_block_to_path (struct inode*,int ,int *,int*) ;
 scalar_t__ ext4_find_goal (struct inode*,int ,TYPE_1__*) ;
 TYPE_1__* ext4_get_branch (struct inode*,int,int *,TYPE_1__*,int*) ;
 int ext4_splice_branch (int *,struct inode*,int ,TYPE_1__*,int,int) ;
 int ext4_test_inode_flag (struct inode*,int ) ;
 int ext4_update_inode_fsync_trans (int *,struct inode*,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int map_bh (struct buffer_head*,int ,scalar_t__) ;
 int set_buffer_boundary (struct buffer_head*) ;
 int set_buffer_new (struct buffer_head*) ;

__attribute__((used)) static int ext4_ind_get_blocks(handle_t *handle, struct inode *inode,
          ext4_lblk_t iblock, unsigned int maxblocks,
          struct buffer_head *bh_result,
          int flags)
{
 int err = -EIO;
 ext4_lblk_t offsets[4];
 Indirect chain[4];
 Indirect *partial;
 ext4_fsblk_t goal;
 int indirect_blks;
 int blocks_to_boundary = 0;
 int depth;
 int count = 0;
 ext4_fsblk_t first_block = 0;

 J_ASSERT(!(ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)));
 J_ASSERT(handle != ((void*)0) || (flags & EXT4_GET_BLOCKS_CREATE) == 0);
 depth = ext4_block_to_path(inode, iblock, offsets,
       &blocks_to_boundary);

 if (depth == 0)
  goto out;

 partial = ext4_get_branch(inode, depth, offsets, chain, &err);


 if (!partial) {
  first_block = le32_to_cpu(chain[depth - 1].key);
  clear_buffer_new(bh_result);
  count++;

  while (count < maxblocks && count <= blocks_to_boundary) {
   ext4_fsblk_t blk;

   blk = le32_to_cpu(*(chain[depth-1].p + count));

   if (blk == first_block + count)
    count++;
   else
    break;
  }
  goto got_it;
 }


 if ((flags & EXT4_GET_BLOCKS_CREATE) == 0 || err == -EIO)
  goto cleanup;




 goal = ext4_find_goal(inode, iblock, partial);


 indirect_blks = (chain + depth) - partial - 1;





 count = ext4_blks_to_allocate(partial, indirect_blks,
     maxblocks, blocks_to_boundary);



 err = ext4_alloc_branch(handle, inode, iblock, indirect_blks,
    &count, goal,
    offsets + (partial - chain), partial);
 if (!err)
  err = ext4_splice_branch(handle, inode, iblock,
      partial, indirect_blks, count);
 if (err)
  goto cleanup;

 set_buffer_new(bh_result);

 ext4_update_inode_fsync_trans(handle, inode, 1);
got_it:
 map_bh(bh_result, inode->i_sb, le32_to_cpu(chain[depth-1].key));
 if (count > blocks_to_boundary)
  set_buffer_boundary(bh_result);
 err = count;

 partial = chain + depth - 1;
cleanup:
 while (partial > chain) {
  BUFFER_TRACE(partial->bh, "call brelse");
  brelse(partial->bh);
  partial--;
 }
 BUFFER_TRACE(bh_result, "returned");
out:
 return err;
}
