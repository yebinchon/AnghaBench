
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;
typedef int dev_t ;


 int ENOMEM ;
 struct block_device* ERR_PTR (int) ;
 struct block_device* bdget (int ) ;
 int blkdev_get (struct block_device*,int ) ;

struct block_device *open_by_devnum(dev_t dev, fmode_t mode)
{
 struct block_device *bdev = bdget(dev);
 int err = -ENOMEM;
 if (bdev)
  err = blkdev_get(bdev, mode);
 return err ? ERR_PTR(err) : bdev;
}
