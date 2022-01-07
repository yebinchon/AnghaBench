
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct inode {int i_sb; int i_mode; } ;
struct ext3_inode_info {int truncate_mutex; int i_block_alloc_info; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
typedef int handle_t ;
typedef scalar_t__ ext3_fsblk_t ;
struct TYPE_10__ {int key; struct buffer_head* bh; int * p; } ;
typedef TYPE_1__ Indirect ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 int EAGAIN ;
 int EIO ;
 struct ext3_inode_info* EXT3_I (struct inode*) ;
 int J_ASSERT (int) ;
 scalar_t__ S_ISREG (int ) ;
 int brelse (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int ext3_alloc_branch (int *,struct inode*,int,int*,scalar_t__,int*,TYPE_1__*) ;
 int ext3_blks_to_allocate (TYPE_1__*,int,unsigned long,int) ;
 int ext3_block_to_path (struct inode*,int ,int*,int*) ;
 scalar_t__ ext3_find_goal (struct inode*,int ,TYPE_1__*) ;
 TYPE_1__* ext3_get_branch (struct inode*,int,int*,TYPE_1__*,int*) ;
 int ext3_init_block_alloc_info (struct inode*) ;
 int ext3_splice_branch (int *,struct inode*,int ,TYPE_1__*,int,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int map_bh (struct buffer_head*,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_buffer_boundary (struct buffer_head*) ;
 int set_buffer_new (struct buffer_head*) ;
 int trace_ext3_get_blocks_enter (struct inode*,int ,unsigned long,int) ;
 int trace_ext3_get_blocks_exit (struct inode*,int ,scalar_t__,int,int) ;
 int verify_chain (TYPE_1__*,TYPE_1__*) ;

int ext3_get_blocks_handle(handle_t *handle, struct inode *inode,
  sector_t iblock, unsigned long maxblocks,
  struct buffer_head *bh_result,
  int create)
{
 int err = -EIO;
 int offsets[4];
 Indirect chain[4];
 Indirect *partial;
 ext3_fsblk_t goal;
 int indirect_blks;
 int blocks_to_boundary = 0;
 int depth;
 struct ext3_inode_info *ei = EXT3_I(inode);
 int count = 0;
 ext3_fsblk_t first_block = 0;


 trace_ext3_get_blocks_enter(inode, iblock, maxblocks, create);
 J_ASSERT(handle != ((void*)0) || create == 0);
 depth = ext3_block_to_path(inode,iblock,offsets,&blocks_to_boundary);

 if (depth == 0)
  goto out;

 partial = ext3_get_branch(inode, depth, offsets, chain, &err);


 if (!partial) {
  first_block = le32_to_cpu(chain[depth - 1].key);
  clear_buffer_new(bh_result);
  count++;

  while (count < maxblocks && count <= blocks_to_boundary) {
   ext3_fsblk_t blk;

   if (!verify_chain(chain, chain + depth - 1)) {







    err = -EAGAIN;
    count = 0;
    break;
   }
   blk = le32_to_cpu(*(chain[depth-1].p + count));

   if (blk == first_block + count)
    count++;
   else
    break;
  }
  if (err != -EAGAIN)
   goto got_it;
 }


 if (!create || err == -EIO)
  goto cleanup;

 mutex_lock(&ei->truncate_mutex);
 if (err == -EAGAIN || !verify_chain(chain, partial)) {
  while (partial > chain) {
   brelse(partial->bh);
   partial--;
  }
  partial = ext3_get_branch(inode, depth, offsets, chain, &err);
  if (!partial) {
   count++;
   mutex_unlock(&ei->truncate_mutex);
   if (err)
    goto cleanup;
   clear_buffer_new(bh_result);
   goto got_it;
  }
 }





 if (S_ISREG(inode->i_mode) && (!ei->i_block_alloc_info))
  ext3_init_block_alloc_info(inode);

 goal = ext3_find_goal(inode, iblock, partial);


 indirect_blks = (chain + depth) - partial - 1;





 count = ext3_blks_to_allocate(partial, indirect_blks,
     maxblocks, blocks_to_boundary);



 err = ext3_alloc_branch(handle, inode, indirect_blks, &count, goal,
    offsets + (partial - chain), partial);
 if (!err)
  err = ext3_splice_branch(handle, inode, iblock,
     partial, indirect_blks, count);
 mutex_unlock(&ei->truncate_mutex);
 if (err)
  goto cleanup;

 set_buffer_new(bh_result);
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
 trace_ext3_get_blocks_exit(inode, iblock,
       depth ? le32_to_cpu(chain[depth-1].key) : 0,
       count, err);
 return err;
}
