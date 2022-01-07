
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_devices; int i_mapping; struct block_device* i_bdev; int i_rdev; } ;
struct block_device {int bd_inodes; TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int i_mapping; int i_count; } ;


 int atomic_inc (int *) ;
 int bdev_lock ;
 struct block_device* bdget (int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static struct block_device *bd_acquire(struct inode *inode)
{
 struct block_device *bdev;

 spin_lock(&bdev_lock);
 bdev = inode->i_bdev;
 if (bdev) {
  atomic_inc(&bdev->bd_inode->i_count);
  spin_unlock(&bdev_lock);
  return bdev;
 }
 spin_unlock(&bdev_lock);

 bdev = bdget(inode->i_rdev);
 if (bdev) {
  spin_lock(&bdev_lock);
  if (!inode->i_bdev) {






   atomic_inc(&bdev->bd_inode->i_count);
   inode->i_bdev = bdev;
   inode->i_mapping = bdev->bd_inode->i_mapping;
   list_add(&inode->i_devices, &bdev->bd_inodes);
  }
  spin_unlock(&bdev_lock);
 }
 return bdev;
}
