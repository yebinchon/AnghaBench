
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ep_device {int desc; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 struct ep_device* to_ep_device (struct device*) ;
 scalar_t__ usb_endpoint_dir_in (int ) ;
 scalar_t__ usb_endpoint_xfer_control (int ) ;

__attribute__((used)) static ssize_t show_ep_direction(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct ep_device *ep = to_ep_device(dev);
 char *direction;

 if (usb_endpoint_xfer_control(ep->desc))
  direction = "both";
 else if (usb_endpoint_dir_in(ep->desc))
  direction = "in";
 else
  direction = "out";
 return sprintf(buf, "%s\n", direction);
}
