
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct inode {int i_sb; int i_mode; } ;
struct ext2_inode_info {int truncate_mutex; int i_block_alloc_info; } ;
struct buffer_head {int dummy; } ;
typedef int sector_t ;
typedef scalar_t__ ext2_fsblk_t ;
struct TYPE_10__ {int bh; int key; int * p; } ;
typedef TYPE_1__ Indirect ;


 int EAGAIN ;
 int EIO ;
 struct ext2_inode_info* EXT2_I (struct inode*) ;
 scalar_t__ S_ISREG (int ) ;
 int brelse (int ) ;
 int clear_buffer_new (struct buffer_head*) ;
 int ext2_alloc_branch (struct inode*,int,int*,scalar_t__,int*,TYPE_1__*) ;
 int ext2_blks_to_allocate (TYPE_1__*,int,unsigned long,int) ;
 int ext2_block_to_path (struct inode*,int ,int*,int*) ;
 int ext2_clear_xip_target (struct inode*,scalar_t__) ;
 scalar_t__ ext2_find_goal (struct inode*,int ,TYPE_1__*) ;
 TYPE_1__* ext2_get_branch (struct inode*,int,int*,TYPE_1__*,int*) ;
 int ext2_init_block_alloc_info (struct inode*) ;
 int ext2_splice_branch (struct inode*,int ,TYPE_1__*,int,int) ;
 scalar_t__ ext2_use_xip (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int map_bh (struct buffer_head*,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_buffer_boundary (struct buffer_head*) ;
 int set_buffer_new (struct buffer_head*) ;
 int verify_chain (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static int ext2_get_blocks(struct inode *inode,
      sector_t iblock, unsigned long maxblocks,
      struct buffer_head *bh_result,
      int create)
{
 int err = -EIO;
 int offsets[4];
 Indirect chain[4];
 Indirect *partial;
 ext2_fsblk_t goal;
 int indirect_blks;
 int blocks_to_boundary = 0;
 int depth;
 struct ext2_inode_info *ei = EXT2_I(inode);
 int count = 0;
 ext2_fsblk_t first_block = 0;

 depth = ext2_block_to_path(inode,iblock,offsets,&blocks_to_boundary);

 if (depth == 0)
  return (err);

 partial = ext2_get_branch(inode, depth, offsets, chain, &err);

 if (!partial) {
  first_block = le32_to_cpu(chain[depth - 1].key);
  clear_buffer_new(bh_result);
  count++;

  while (count < maxblocks && count <= blocks_to_boundary) {
   ext2_fsblk_t blk;

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
  partial = ext2_get_branch(inode, depth, offsets, chain, &err);
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
  ext2_init_block_alloc_info(inode);

 goal = ext2_find_goal(inode, iblock, partial);


 indirect_blks = (chain + depth) - partial - 1;




 count = ext2_blks_to_allocate(partial, indirect_blks,
     maxblocks, blocks_to_boundary);



 err = ext2_alloc_branch(inode, indirect_blks, &count, goal,
    offsets + (partial - chain), partial);

 if (err) {
  mutex_unlock(&ei->truncate_mutex);
  goto cleanup;
 }

 if (ext2_use_xip(inode->i_sb)) {



  err = ext2_clear_xip_target (inode,
   le32_to_cpu(chain[depth-1].key));
  if (err) {
   mutex_unlock(&ei->truncate_mutex);
   goto cleanup;
  }
 }

 ext2_splice_branch(inode, iblock, partial, indirect_blks, count);
 mutex_unlock(&ei->truncate_mutex);
 set_buffer_new(bh_result);
got_it:
 map_bh(bh_result, inode->i_sb, le32_to_cpu(chain[depth-1].key));
 if (count > blocks_to_boundary)
  set_buffer_boundary(bh_result);
 err = count;

 partial = chain + depth - 1;
cleanup:
 while (partial > chain) {
  brelse(partial->bh);
  partial--;
 }
 return err;
}
