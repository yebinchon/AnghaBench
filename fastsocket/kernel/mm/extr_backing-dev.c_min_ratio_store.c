
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct backing_dev_info {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 size_t bdi_set_min_ratio (struct backing_dev_info*,unsigned int) ;
 struct backing_dev_info* dev_get_drvdata (struct device*) ;
 unsigned int simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t min_ratio_store(struct device *dev,
  struct device_attribute *attr, const char *buf, size_t count)
{
 struct backing_dev_info *bdi = dev_get_drvdata(dev);
 char *end;
 unsigned int ratio;
 ssize_t ret = -EINVAL;

 ratio = simple_strtoul(buf, &end, 10);
 if (*buf && (end[0] == '\0' || (end[0] == '\n' && end[1] == '\0'))) {
  ret = bdi_set_min_ratio(bdi, ratio);
  if (!ret)
   ret = count;
 }
 return ret;
}
