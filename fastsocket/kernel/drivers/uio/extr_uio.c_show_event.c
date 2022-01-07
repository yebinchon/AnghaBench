
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_device {int event; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 scalar_t__ atomic_read (int *) ;
 struct uio_device* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t show_event(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct uio_device *idev = dev_get_drvdata(dev);
 if (idev)
  return sprintf(buf, "%u\n",
    (unsigned int)atomic_read(&idev->event));
 else
  return -ENODEV;
}
