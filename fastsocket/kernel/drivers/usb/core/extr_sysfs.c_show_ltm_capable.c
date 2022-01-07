
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;
 int to_usb_device (struct device*) ;
 scalar_t__ usb_device_supports_ltm (int ) ;

__attribute__((used)) static ssize_t
show_ltm_capable(struct device *dev, struct device_attribute *attr, char *buf)
{
 if (usb_device_supports_ltm(to_usb_device(dev)))
  return sprintf(buf, "%s\n", "yes");
 return sprintf(buf, "%s\n", "no");
}
