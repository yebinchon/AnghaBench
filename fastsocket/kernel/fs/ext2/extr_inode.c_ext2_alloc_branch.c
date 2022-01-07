
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int i_mode; TYPE_2__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int ext2_fsblk_t ;
typedef void* __le32 ;
struct TYPE_5__ {int s_blocksize; } ;
struct TYPE_4__ {void** p; void* key; struct buffer_head* bh; } ;
typedef TYPE_1__ Indirect ;


 scalar_t__ IS_DIRSYNC (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 void* cpu_to_le32 (int ) ;
 int ext2_alloc_blocks (struct inode*,int ,int,int,int *,int*) ;
 int lock_buffer (struct buffer_head*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int memset (scalar_t__,int ,int) ;
 struct buffer_head* sb_getblk (TYPE_2__*,int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

__attribute__((used)) static int ext2_alloc_branch(struct inode *inode,
   int indirect_blks, int *blks, ext2_fsblk_t goal,
   int *offsets, Indirect *branch)
{
 int blocksize = inode->i_sb->s_blocksize;
 int i, n = 0;
 int err = 0;
 struct buffer_head *bh;
 int num;
 ext2_fsblk_t new_blocks[4];
 ext2_fsblk_t current_block;

 num = ext2_alloc_blocks(inode, goal, indirect_blks,
    *blks, new_blocks, &err);
 if (err)
  return err;

 branch[0].key = cpu_to_le32(new_blocks[0]);



 for (n = 1; n <= indirect_blks; n++) {





  bh = sb_getblk(inode->i_sb, new_blocks[n-1]);
  branch[n].bh = bh;
  lock_buffer(bh);
  memset(bh->b_data, 0, blocksize);
  branch[n].p = (__le32 *) bh->b_data + offsets[n];
  branch[n].key = cpu_to_le32(new_blocks[n]);
  *branch[n].p = branch[n].key;
  if ( n == indirect_blks) {
   current_block = new_blocks[n];





   for (i=1; i < num; i++)
    *(branch[n].p + i) = cpu_to_le32(++current_block);
  }
  set_buffer_uptodate(bh);
  unlock_buffer(bh);
  mark_buffer_dirty_inode(bh, inode);




  if (S_ISDIR(inode->i_mode) && IS_DIRSYNC(inode))
   sync_dirty_buffer(bh);
 }
 *blks = num;
 return err;
}
