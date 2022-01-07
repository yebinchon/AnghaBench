
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mutex; int i_alloc_sem; TYPE_1__* i_op; struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef scalar_t__ loff_t ;
struct TYPE_2__ {int (* truncate_range ) (struct inode*,scalar_t__,scalar_t__) ;} ;


 int ENOSYS ;
 int PAGE_SIZE ;
 int down_write (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ round_up (scalar_t__,int ) ;
 int stub1 (struct inode*,scalar_t__,scalar_t__) ;
 int unmap_mapping_range (struct address_space*,scalar_t__,scalar_t__,int) ;
 int up_write (int *) ;

int vmtruncate_range(struct inode *inode, loff_t lstart, loff_t lend)
{
 struct address_space *mapping = inode->i_mapping;
 loff_t holebegin = round_up(lstart, PAGE_SIZE);
 loff_t holelen = 1 + lend - holebegin;






 if (!inode->i_op->truncate_range)
  return -ENOSYS;

 mutex_lock(&inode->i_mutex);
 down_write(&inode->i_alloc_sem);
 unmap_mapping_range(mapping, holebegin, holelen, 1);
 inode->i_op->truncate_range(inode, lstart, lend);

 unmap_mapping_range(mapping, holebegin, holelen, 1);
 up_write(&inode->i_alloc_sem);
 mutex_unlock(&inode->i_mutex);

 return 0;
}
