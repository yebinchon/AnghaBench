
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; int lock; } ;
struct stub_device {TYPE_1__ ud; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENODEV ;
 int PAGE_SIZE ;
 int dev_err (struct device*,char*) ;
 struct stub_device* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t show_status(struct device *dev, struct device_attribute *attr,
      char *buf)
{
 struct stub_device *sdev = dev_get_drvdata(dev);
 int status;

 if (!sdev) {
  dev_err(dev, "sdev is null\n");
  return -ENODEV;
 }

 spin_lock(&sdev->ud.lock);
 status = sdev->ud.status;
 spin_unlock(&sdev->ud.lock);

 return snprintf(buf, PAGE_SIZE, "%d\n", status);
}
