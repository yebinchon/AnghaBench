
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
 int W1_F2D_SCRATCH_MASK ;
 int W1_F2D_SCRATCH_SIZE ;
 struct w1_slave* kobj_to_w1_slave (struct kobject*) ;
 int memcpy (char*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t w1_f2d_fix_count (int,size_t,int ) ;
 scalar_t__ w1_f2d_readblock (struct w1_slave*,int,int,char*) ;
 scalar_t__ w1_f2d_write (struct w1_slave*,int,int,char*) ;

__attribute__((used)) static ssize_t w1_f2d_write_bin(struct file *filp, struct kobject *kobj,
    struct bin_attribute *bin_attr,
    char *buf, loff_t off, size_t count)
{
 struct w1_slave *sl = kobj_to_w1_slave(kobj);
 int addr, len;
 int copy;

 count = w1_f2d_fix_count(off, count, W1_F2D_EEPROM_SIZE);
 if (count == 0)
  return 0;

 mutex_lock(&sl->master->mutex);


 addr = off;
 len = count;
 while (len > 0) {


  if (len < W1_F2D_SCRATCH_SIZE || addr & W1_F2D_SCRATCH_MASK) {
   char tmp[W1_F2D_SCRATCH_SIZE];


   if (w1_f2d_readblock(sl, addr & ~W1_F2D_SCRATCH_MASK,
     W1_F2D_SCRATCH_SIZE, tmp)) {
    count = -EIO;
    goto out_up;
   }


   copy = W1_F2D_SCRATCH_SIZE -
    (addr & W1_F2D_SCRATCH_MASK);

   if (copy > len)
    copy = len;

   memcpy(&tmp[addr & W1_F2D_SCRATCH_MASK], buf, copy);
   if (w1_f2d_write(sl, addr & ~W1_F2D_SCRATCH_MASK,
     W1_F2D_SCRATCH_SIZE, tmp) < 0) {
    count = -EIO;
    goto out_up;
   }
  } else {

   copy = W1_F2D_SCRATCH_SIZE;
   if (w1_f2d_write(sl, addr, copy, buf) < 0) {
    count = -EIO;
    goto out_up;
   }
  }
  buf += copy;
  addr += copy;
  len -= copy;
 }

out_up:
 mutex_unlock(&sl->master->mutex);

 return count;
}
