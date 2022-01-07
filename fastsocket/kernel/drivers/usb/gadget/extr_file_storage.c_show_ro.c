
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {int ro; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct lun* dev_to_lun (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_ro(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct lun *curlun = dev_to_lun(dev);

 return sprintf(buf, "%d\n", curlun->ro);
}
