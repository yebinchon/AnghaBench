
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct zram {int disksize; int init_lock; int disk; scalar_t__ init_done; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int PAGE_ALIGN (int ) ;
 int SECTOR_SHIFT ;
 struct zram* dev_to_zram (struct device*) ;
 int down_write (int *) ;
 int pr_info (char*) ;
 int set_capacity (int ,int) ;
 int strict_strtoull (char const*,int,int *) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t disksize_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t len)
{
 int ret;
 u64 disksize;
 struct zram *zram = dev_to_zram(dev);

 ret = strict_strtoull(buf, 10, &disksize);
 if (ret)
  return ret;

 down_write(&zram->init_lock);
 if (zram->init_done) {
  up_write(&zram->init_lock);
  pr_info("Cannot change disksize for initialized device\n");
  return -EBUSY;
 }

 zram->disksize = PAGE_ALIGN(disksize);
 set_capacity(zram->disk, zram->disksize >> SECTOR_SHIFT);
 up_write(&zram->init_lock);

 return len;
}
