
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w1_slave {TYPE_1__* master; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int mutex; } ;


 size_t EIO ;
 int W1_F2D_EEPROM_SIZE ;
 int W1_F2D_READ_MAXLEN ;
 struct w1_slave* kobj_to_w1_slave (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t w1_f2d_fix_count (int,size_t,int ) ;
 scalar_t__ w1_f2d_readblock (struct w1_slave*,int,int,char*) ;

__attribute__((used)) static ssize_t w1_f2d_read_bin(struct file *filp, struct kobject *kobj,
          struct bin_attribute *bin_attr,
          char *buf, loff_t off, size_t count)
{
 struct w1_slave *sl = kobj_to_w1_slave(kobj);
 int todo = count;

 count = w1_f2d_fix_count(off, count, W1_F2D_EEPROM_SIZE);
 if (count == 0)
  return 0;

 mutex_lock(&sl->master->mutex);


 while (todo > 0) {
  int block_read;

  if (todo >= W1_F2D_READ_MAXLEN)
   block_read = W1_F2D_READ_MAXLEN;
  else
   block_read = todo;

  if (w1_f2d_readblock(sl, off, block_read, buf) < 0)
   count = -EIO;

  todo -= W1_F2D_READ_MAXLEN;
  buf += W1_F2D_READ_MAXLEN;
  off += W1_F2D_READ_MAXLEN;
 }

 mutex_unlock(&sl->master->mutex);

 return count;
}
