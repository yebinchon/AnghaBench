
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
typedef int handle_t ;
typedef int ext3_fsblk_t ;


 int ext3_free_blocks_sb (int *,struct super_block*,int ,unsigned long,unsigned long*) ;
 int trace_ext3_free_blocks (struct inode*,int ,unsigned long) ;
 int vfs_dq_free_block (struct inode*,unsigned long) ;

void ext3_free_blocks(handle_t *handle, struct inode *inode,
   ext3_fsblk_t block, unsigned long count)
{
 struct super_block *sb = inode->i_sb;
 unsigned long dquot_freed_blocks;

 trace_ext3_free_blocks(inode, block, count);
 ext3_free_blocks_sb(handle, sb, block, count, &dquot_freed_blocks);
 if (dquot_freed_blocks)
  vfs_dq_free_block(inode, dquot_freed_blocks);
 return;
}
