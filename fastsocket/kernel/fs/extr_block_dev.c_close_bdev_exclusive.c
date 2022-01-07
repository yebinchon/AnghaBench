
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int bd_release (struct block_device*) ;
 int blkdev_put (struct block_device*,int ) ;

void close_bdev_exclusive(struct block_device *bdev, fmode_t mode)
{
 bd_release(bdev);
 blkdev_put(bdev, mode);
}
