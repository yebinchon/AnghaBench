
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {scalar_t__ dirty; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_line6_pod* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t pod_get_dirty(struct device *dev, struct device_attribute *attr,
        char *buf)
{
 struct usb_interface *interface = to_usb_interface(dev);
 struct usb_line6_pod *pod = usb_get_intfdata(interface);
 buf[0] = pod->dirty ? '1' : '0';
 buf[1] = '\n';
 return 2;
}
