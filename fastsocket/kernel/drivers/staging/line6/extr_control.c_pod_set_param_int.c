
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {int dummy; } ;
struct usb_interface {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int pod_transmit_parameter (struct usb_line6_pod*,int,int) ;
 int simple_strtoul (char const*,int *,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct usb_line6_pod* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t pod_set_param_int(struct device *dev, const char *buf, size_t count, int param)
{
 struct usb_interface *interface = to_usb_interface(dev);
 struct usb_line6_pod *pod = usb_get_intfdata(interface);
 int value = simple_strtoul(buf, ((void*)0), 10);
 pod_transmit_parameter(pod, param, value);
 return count;
}
