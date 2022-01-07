
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusbhc {int dummy; } ;
struct wusb_dev {int dummy; } ;
struct device {int kobj; } ;
struct usb_device {struct device dev; } ;


 int dev_err (struct device*,char*,int) ;
 int sysfs_create_group (int *,int *) ;
 int wusb_dev_attr_group ;

int wusb_dev_sysfs_add(struct wusbhc *wusbhc, struct usb_device *usb_dev,
         struct wusb_dev *wusb_dev)
{
 int result = sysfs_create_group(&usb_dev->dev.kobj,
     &wusb_dev_attr_group);
 struct device *dev = &usb_dev->dev;
 if (result < 0)
  dev_err(dev, "Cannot register WUSB-dev attributes: %d\n",
   result);
 return result;
}
