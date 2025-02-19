
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uio_device {TYPE_1__* info; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* version; } ;


 int ENODEV ;
 struct uio_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t show_version(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 struct uio_device *idev = dev_get_drvdata(dev);
 if (idev)
  return sprintf(buf, "%s\n", idev->info->version);
 else
  return -ENODEV;
}
