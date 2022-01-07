
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_info {int sys_group_size; } ;
typedef size_t ssize_t ;


 int atomic_set (int *,unsigned long) ;
 struct channel_info* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,unsigned long*) ;

__attribute__((used)) static ssize_t store_group_size(struct device *dev,
    struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct channel_info *channel = dev_get_drvdata(dev);
 unsigned long group_size;

 sscanf(buf, "%lu", &group_size);
 atomic_set(&channel->sys_group_size, group_size);

 return count;
}
