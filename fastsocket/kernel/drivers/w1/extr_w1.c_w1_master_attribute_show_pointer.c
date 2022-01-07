
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w1_master {int mutex; int bus_master; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct w1_master* dev_to_w1_master (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t w1_master_attribute_show_pointer(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct w1_master *md = dev_to_w1_master(dev);
 ssize_t count;

 mutex_lock(&md->mutex);
 count = sprintf(buf, "0x%p\n", md->bus_master);
 mutex_unlock(&md->mutex);
 return count;
}
