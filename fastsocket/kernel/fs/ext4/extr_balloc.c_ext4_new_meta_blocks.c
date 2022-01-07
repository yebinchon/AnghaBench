
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_allocation_request {unsigned long len; unsigned int flags; int goal; struct inode* inode; } ;
typedef int handle_t ;
typedef int ext4_fsblk_t ;
typedef int ar ;
struct TYPE_2__ {unsigned long i_allocated_meta_blocks; int i_block_reservation_lock; scalar_t__ i_delalloc_reserved_flag; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int ext4_mb_new_blocks (int *,struct ext4_allocation_request*,int*) ;
 int memset (struct ext4_allocation_request*,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfs_dq_alloc_block_nofail (struct inode*,unsigned long) ;

ext4_fsblk_t ext4_new_meta_blocks(handle_t *handle, struct inode *inode,
      ext4_fsblk_t goal, unsigned int flags,
      unsigned long *count, int *errp)
{
 struct ext4_allocation_request ar;
 ext4_fsblk_t ret;

 memset(&ar, 0, sizeof(ar));

 ar.inode = inode;
 ar.goal = goal;
 ar.len = count ? *count : 1;
 ar.flags = flags;

 ret = ext4_mb_new_blocks(handle, &ar, errp);
 if (count)
  *count = ar.len;




 if (!(*errp) && EXT4_I(inode)->i_delalloc_reserved_flag) {
  spin_lock(&EXT4_I(inode)->i_block_reservation_lock);
  EXT4_I(inode)->i_allocated_meta_blocks += ar.len;
  spin_unlock(&EXT4_I(inode)->i_block_reservation_lock);
  vfs_dq_alloc_block_nofail(inode, ar.len);
 }
 return ret;
}
