
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbtmc_device_data {int TermChar; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usbtmc_device_data* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t show_TermChar(struct device *dev,
        struct device_attribute *attr, char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usbtmc_device_data *data = usb_get_intfdata(intf);

 return sprintf(buf, "%c\n", data->TermChar);
}
