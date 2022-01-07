
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int dummy; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int pod_send_channel (struct usb_line6_pod*,int) ;
 int simple_strtoul (char const*,int *,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_line6_pod* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t pod_set_channel(struct device *dev,
          struct device_attribute *attr,
          const char *buf, size_t count)
{
 struct usb_interface *interface = to_usb_interface(dev);
 struct usb_line6_pod *pod = usb_get_intfdata(interface);
 int value = simple_strtoul(buf, ((void*)0), 10);
 pod_send_channel(pod, value);
 return count;
}
