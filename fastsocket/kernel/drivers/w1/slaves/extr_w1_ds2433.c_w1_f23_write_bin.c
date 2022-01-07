
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w1_slave {TYPE_1__* master; int dev; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef size_t loff_t ;
struct TYPE_2__ {int mutex; } ;


 int CRC16_INIT ;
 scalar_t__ CRC16_VALID ;
 size_t EINVAL ;
 size_t EIO ;
 int W1_EEPROM_SIZE ;
 size_t W1_PAGE_MASK ;
 int W1_PAGE_SIZE ;
 scalar_t__ crc16 (int ,char*,int) ;
 int dev_err (int *,char*,int,...) ;
 struct w1_slave* kobj_to_w1_slave (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t w1_f23_fix_count (size_t,size_t,int ) ;
 scalar_t__ w1_f23_write (struct w1_slave*,int,int,char*) ;

__attribute__((used)) static ssize_t w1_f23_write_bin(struct file *filp, struct kobject *kobj,
    struct bin_attribute *bin_attr,
    char *buf, loff_t off, size_t count)
{
 struct w1_slave *sl = kobj_to_w1_slave(kobj);
 int addr, len, idx;

 if ((count = w1_f23_fix_count(off, count, W1_EEPROM_SIZE)) == 0)
  return 0;
 mutex_lock(&sl->master->mutex);


 idx = 0;
 while (idx < count) {
  addr = off + idx;
  len = W1_PAGE_SIZE - (addr & W1_PAGE_MASK);
  if (len > (count - idx))
   len = count - idx;

  if (w1_f23_write(sl, addr, len, &buf[idx]) < 0) {
   count = -EIO;
   goto out_up;
  }
  idx += len;
 }

out_up:
 mutex_unlock(&sl->master->mutex);

 return count;
}
