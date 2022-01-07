
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cbaf {int device_band_groups; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int scnprintf (char*,int ,char*,int ) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct cbaf* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t cbaf_wusb_device_band_groups_show(struct device *dev,
       struct device_attribute *attr,
       char *buf)
{
 struct usb_interface *iface = to_usb_interface(dev);
 struct cbaf *cbaf = usb_get_intfdata(iface);

 return scnprintf(buf, PAGE_SIZE, "0x%04x\n", cbaf->device_band_groups);
}
