
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct channel_info {int sys_group_count; } ;
typedef size_t ssize_t ;


 int atomic_set (int *,unsigned long) ;
 struct channel_info* dev_get_drvdata (struct device*) ;
 int sscanf (char const*,char*,unsigned long*) ;

__attribute__((used)) static ssize_t store_group_count(struct device *dev,
    struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct channel_info *channel = dev_get_drvdata(dev);
 unsigned long group_count;

 sscanf(buf, "%lu", &group_count);
 atomic_set(&channel->sys_group_count, group_count);

 return count;
}
