
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int sscanf (char const*,char*,int*) ;
 struct usb_device* to_usb_device (struct device*) ;
 int usb_lock_device (struct usb_device*) ;
 int usb_set_configuration (struct usb_device*,int) ;
 int usb_unlock_device (struct usb_device*) ;

__attribute__((used)) static ssize_t
set_bConfigurationValue(struct device *dev, struct device_attribute *attr,
  const char *buf, size_t count)
{
 struct usb_device *udev = to_usb_device(dev);
 int config, value;

 if (sscanf(buf, "%d", &config) != 1 || config < -1 || config > 255)
  return -EINVAL;
 usb_lock_device(udev);
 value = usb_set_configuration(udev, config);
 usb_unlock_device(udev);
 return (value < 0) ? value : count;
}
