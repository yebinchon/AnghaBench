
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_master {long search_count; int thread; int mutex; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct w1_master* dev_to_w1_master (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t strict_strtol (char const*,int ,long*) ;
 int wake_up_process (int ) ;

__attribute__((used)) static ssize_t w1_master_attribute_store_search(struct device * dev,
      struct device_attribute *attr,
      const char * buf, size_t count)
{
 long tmp;
 struct w1_master *md = dev_to_w1_master(dev);

 if (strict_strtol(buf, 0, &tmp) == -EINVAL)
  return -EINVAL;

 mutex_lock(&md->mutex);
 md->search_count = tmp;
 mutex_unlock(&md->mutex);
 wake_up_process(md->thread);

 return count;
}
