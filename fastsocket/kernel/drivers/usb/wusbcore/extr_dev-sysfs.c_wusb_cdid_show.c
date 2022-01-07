
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wusb_dev {int cdid; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ ENODEV ;
 int PAGE_SIZE ;
 scalar_t__ ckhdid_printf (char*,int ,int *) ;
 int strcat (char*,char*) ;
 int to_usb_device (struct device*) ;
 struct wusb_dev* wusb_dev_get_by_usb_dev (int ) ;
 int wusb_dev_put (struct wusb_dev*) ;

__attribute__((used)) static ssize_t wusb_cdid_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 ssize_t result;
 struct wusb_dev *wusb_dev;

 wusb_dev = wusb_dev_get_by_usb_dev(to_usb_device(dev));
 if (wusb_dev == ((void*)0))
  return -ENODEV;
 result = ckhdid_printf(buf, PAGE_SIZE, &wusb_dev->cdid);
 strcat(buf, "\n");
 wusb_dev_put(wusb_dev);
 return result + 1;
}
