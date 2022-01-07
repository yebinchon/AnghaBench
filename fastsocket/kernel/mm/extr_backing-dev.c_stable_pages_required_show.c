
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct backing_dev_info {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ bdi_cap_stable_pages_required (struct backing_dev_info*) ;
 struct backing_dev_info* dev_get_drvdata (struct device*) ;
 int snprintf (char*,scalar_t__,char*,int) ;

__attribute__((used)) static ssize_t stable_pages_required_show(struct device *dev,
       struct device_attribute *attr,
       char *page)
{
 struct backing_dev_info *bdi = dev_get_drvdata(dev);

 return snprintf(page, PAGE_SIZE-1, "%d\n",
   bdi_cap_stable_pages_required(bdi) ? 1 : 0);
}
