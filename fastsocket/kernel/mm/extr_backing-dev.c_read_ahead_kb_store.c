
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct backing_dev_info {unsigned long ra_pages; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int PAGE_SHIFT ;
 struct backing_dev_info* dev_get_drvdata (struct device*) ;
 unsigned long simple_strtoul (char const*,char**,int) ;

__attribute__((used)) static ssize_t read_ahead_kb_store(struct device *dev,
      struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct backing_dev_info *bdi = dev_get_drvdata(dev);
 char *end;
 unsigned long read_ahead_kb;
 ssize_t ret = -EINVAL;

 read_ahead_kb = simple_strtoul(buf, &end, 10);
 if (*buf && (end[0] == '\0' || (end[0] == '\n' && end[1] == '\0'))) {
  bdi->ra_pages = read_ahead_kb >> (PAGE_SHIFT - 10);
  ret = count;
 }
 return ret;
}
