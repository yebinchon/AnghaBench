
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_device_data {char TermChar; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usbtmc_device_data* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t store_TermChar(struct device *dev,
         struct device_attribute *attr,
         const char *buf, size_t count)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usbtmc_device_data *data = usb_get_intfdata(intf);

 if (count < 1)
  return -EINVAL;
 data->TermChar = buf[0];
 return count;
}
