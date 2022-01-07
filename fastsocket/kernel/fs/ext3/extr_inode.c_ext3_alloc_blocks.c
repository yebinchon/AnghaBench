
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
typedef int handle_t ;
typedef scalar_t__ ext3_fsblk_t ;


 int ext3_free_blocks (int *,struct inode*,scalar_t__,int) ;
 scalar_t__ ext3_new_blocks (int *,struct inode*,scalar_t__,unsigned long*,int*) ;

__attribute__((used)) static int ext3_alloc_blocks(handle_t *handle, struct inode *inode,
   ext3_fsblk_t goal, int indirect_blks, int blks,
   ext3_fsblk_t new_blocks[4], int *err)
{
 int target, i;
 unsigned long count = 0;
 int index = 0;
 ext3_fsblk_t current_block = 0;
 int ret = 0;
 target = blks + indirect_blks;

 while (1) {
  count = target;

  current_block = ext3_new_blocks(handle,inode,goal,&count,err);
  if (*err)
   goto failed_out;

  target -= count;

  while (index < indirect_blks && count) {
   new_blocks[index++] = current_block++;
   count--;
  }

  if (count > 0)
   break;
 }


 new_blocks[index] = current_block;


 ret = count;
 *err = 0;
 return ret;
failed_out:
 for (i = 0; i <index; i++)
  ext3_free_blocks(handle, inode, new_blocks[i], 1);
 return ret;
}
