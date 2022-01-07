
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int init_lock; scalar_t__ init_done; int disk; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct block_device {scalar_t__ bd_holders; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int __zram_reset_device (struct zram*) ;
 struct block_device* bdget_disk (int ,int ) ;
 struct zram* dev_to_zram (struct device*) ;
 int down_write (int *) ;
 int fsync_bdev (struct block_device*) ;
 int strict_strtoul (char const*,int,unsigned long*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t reset_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 int ret;
 unsigned long do_reset;
 struct zram *zram;
 struct block_device *bdev;

 zram = dev_to_zram(dev);
 bdev = bdget_disk(zram->disk, 0);


 if (bdev->bd_holders)
  return -EBUSY;

 ret = strict_strtoul(buf, 10, &do_reset);
 if (ret)
  return ret;

 if (!do_reset)
  return -EINVAL;


 if (bdev)
  fsync_bdev(bdev);

 down_write(&zram->init_lock);
 if (zram->init_done)
  __zram_reset_device(zram);
 up_write(&zram->init_lock);

 return len;
}
