
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {struct block_device* i_bdev; int i_sb; } ;
struct block_device {int bd_inode; } ;


 int __bd_forget (struct inode*) ;
 int bdev_lock ;
 int iput (int ) ;
 int sb_is_blkdev_sb (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void bd_forget(struct inode *inode)
{
 struct block_device *bdev = ((void*)0);

 spin_lock(&bdev_lock);
 if (inode->i_bdev) {
  if (!sb_is_blkdev_sb(inode->i_sb))
   bdev = inode->i_bdev;
  __bd_forget(inode);
 }
 spin_unlock(&bdev_lock);

 if (bdev)
  iput(bdev->bd_inode);
}
