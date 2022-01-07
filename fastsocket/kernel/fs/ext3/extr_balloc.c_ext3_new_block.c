
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int handle_t ;
typedef int ext3_fsblk_t ;


 int ext3_new_blocks (int *,struct inode*,int ,unsigned long*,int*) ;

ext3_fsblk_t ext3_new_block(handle_t *handle, struct inode *inode,
   ext3_fsblk_t goal, int *errp)
{
 unsigned long count = 1;

 return ext3_new_blocks(handle, inode, goal, &count, errp);
}
