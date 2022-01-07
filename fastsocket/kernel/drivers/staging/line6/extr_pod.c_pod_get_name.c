
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ header; } ;
struct usb_line6_pod {TYPE_1__ prog_data; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ POD_NAME_OFFSET ;
 int get_name_generic (struct usb_line6_pod*,scalar_t__,char*) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_line6_pod* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t pod_get_name(struct device *dev, struct device_attribute *attr,
       char *buf)
{
 struct usb_interface *interface = to_usb_interface(dev);
 struct usb_line6_pod *pod = usb_get_intfdata(interface);
 return get_name_generic(pod, pod->prog_data.header + POD_NAME_OFFSET, buf);
}
