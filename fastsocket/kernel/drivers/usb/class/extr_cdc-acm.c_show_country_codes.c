
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acm {int country_code_size; int country_codes; } ;
typedef int ssize_t ;


 int memcpy (char*,int ,int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct acm* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t show_country_codes
(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct acm *acm = usb_get_intfdata(intf);

 memcpy(buf, acm->country_codes, acm->country_code_size);
 return acm->country_code_size;
}
