
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct block_device {int dummy; } ;
typedef int dev_t ;


 int BDEVNAME_SIZE ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (struct block_device*) ;
 int KERN_ERR ;
 int PTR_ERR (struct block_device*) ;
 int __bdevname (int ,char*) ;
 int ext3_msg (struct super_block*,int ,char*,int ,int ) ;
 struct block_device* open_by_devnum (int ,int) ;

__attribute__((used)) static struct block_device *ext3_blkdev_get(dev_t dev, struct super_block *sb)
{
 struct block_device *bdev;
 char b[BDEVNAME_SIZE];

 bdev = open_by_devnum(dev, FMODE_READ|FMODE_WRITE);
 if (IS_ERR(bdev))
  goto fail;
 return bdev;

fail:
 ext3_msg(sb, KERN_ERR, "error: failed to open journal device %s: %ld",
  __bdevname(dev, b), PTR_ERR(bdev));

 return ((void*)0);
}
