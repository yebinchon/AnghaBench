
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int bd_release (struct block_device*) ;
 int blkdev_put (struct block_device*,int) ;

__attribute__((used)) static int ext3_blkdev_put(struct block_device *bdev)
{
 bd_release(bdev);
 return blkdev_put(bdev, FMODE_READ|FMODE_WRITE);
}
