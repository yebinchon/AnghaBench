
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int fmode_t ;


 int EACCES ;
 struct block_device* ERR_PTR (int) ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (struct block_device*) ;
 int bd_claim (struct block_device*,void*) ;
 scalar_t__ bdev_read_only (struct block_device*) ;
 int blkdev_get (struct block_device*,int) ;
 int blkdev_put (struct block_device*,int) ;
 struct block_device* lookup_bdev (char const*) ;

struct block_device *open_bdev_exclusive(const char *path, fmode_t mode, void *holder)
{
 struct block_device *bdev;
 int error = 0;

 bdev = lookup_bdev(path);
 if (IS_ERR(bdev))
  return bdev;

 error = blkdev_get(bdev, mode);
 if (error)
  return ERR_PTR(error);
 error = -EACCES;
 if ((mode & FMODE_WRITE) && bdev_read_only(bdev))
  goto blkdev_put;
 error = bd_claim(bdev, holder);
 if (error)
  goto blkdev_put;

 return bdev;

blkdev_put:
 blkdev_put(bdev, mode);
 return ERR_PTR(error);
}
