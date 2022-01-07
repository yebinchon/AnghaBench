
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mode; TYPE_1__* f_mapping; } ;
struct block_device {struct file* bd_holder; } ;
struct TYPE_2__ {int host; } ;


 struct block_device* I_BDEV (int ) ;
 int bd_release (struct block_device*) ;
 int blkdev_put (struct block_device*,int ) ;

__attribute__((used)) static int blkdev_close(struct inode * inode, struct file * filp)
{
 struct block_device *bdev = I_BDEV(filp->f_mapping->host);
 if (bdev->bd_holder == filp)
  bd_release(bdev);
 return blkdev_put(bdev, filp->f_mode);
}
