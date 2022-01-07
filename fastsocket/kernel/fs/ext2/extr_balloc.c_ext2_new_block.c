
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int ext2_fsblk_t ;


 int ext2_new_blocks (struct inode*,unsigned long,unsigned long*,int*) ;

ext2_fsblk_t ext2_new_block(struct inode *inode, unsigned long goal, int *errp)
{
 unsigned long count = 1;

 return ext2_new_blocks(inode, goal, &count, errp);
}
