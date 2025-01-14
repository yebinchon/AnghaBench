
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_config {char* string; } ;
struct usb_device {struct usb_host_config* actconfig; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct usb_device* to_usb_device (struct device*) ;

__attribute__((used)) static ssize_t show_configuration_string(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct usb_device *udev;
 struct usb_host_config *actconfig;

 udev = to_usb_device(dev);
 actconfig = udev->actconfig;
 if ((!actconfig) || (!actconfig->string))
  return 0;
 return sprintf(buf, "%s\n", actconfig->string);
}
