
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


 struct w1_slave* kobj_to_w1_slave (struct kobject*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ w1_reset_select_slave (struct w1_slave*) ;
 int w1_write_block (TYPE_1__*,char*,size_t) ;

__attribute__((used)) static ssize_t w1_default_write(struct file *filp, struct kobject *kobj,
    struct bin_attribute *bin_attr,
    char *buf, loff_t off, size_t count)
{
 struct w1_slave *sl = kobj_to_w1_slave(kobj);

 mutex_lock(&sl->master->mutex);
 if (w1_reset_select_slave(sl)) {
  count = 0;
  goto out_up;
 }

 w1_write_block(sl->master, buf, count);

out_up:
 mutex_unlock(&sl->master->mutex);
 return count;
}
