
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_blkbits; } ;
struct buffer_head {int b_size; scalar_t__ b_blocknr; int * b_page; } ;
typedef int sector_t ;
struct TYPE_2__ {int i_flags; } ;


 int EINVAL ;
 int GET_BLOCK_NO_DANGLE ;
 TYPE_1__* REISERFS_I (struct inode*) ;
 scalar_t__ buffer_mapped (struct buffer_head*) ;
 int clear_buffer_mapped (struct buffer_head*) ;
 int i_pack_on_close_mask ;
 int lock_kernel () ;
 int reiserfs_commit_for_inode (struct inode*) ;
 int reiserfs_get_block (struct inode*,int ,struct buffer_head*,int) ;
 int unlock_kernel () ;

__attribute__((used)) static int reiserfs_get_blocks_direct_io(struct inode *inode,
      sector_t iblock,
      struct buffer_head *bh_result,
      int create)
{
 int ret;

 bh_result->b_page = ((void*)0);




 bh_result->b_size = (1 << inode->i_blkbits);

 ret = reiserfs_get_block(inode, iblock, bh_result,
     create | GET_BLOCK_NO_DANGLE);
 if (ret)
  goto out;


 if (buffer_mapped(bh_result) && bh_result->b_blocknr == 0) {



  clear_buffer_mapped(bh_result);
  ret = -EINVAL;
 }


 if (REISERFS_I(inode)->i_flags & i_pack_on_close_mask) {
  int err;
  lock_kernel();
  err = reiserfs_commit_for_inode(inode);
  REISERFS_I(inode)->i_flags &= ~i_pack_on_close_mask;
  unlock_kernel();
  if (err < 0)
   ret = err;
 }
      out:
 return ret;
}
