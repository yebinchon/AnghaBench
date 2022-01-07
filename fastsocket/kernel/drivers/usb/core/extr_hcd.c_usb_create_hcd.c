
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_hcd {int dummy; } ;
struct hc_driver {int dummy; } ;
struct device {int dummy; } ;


 struct usb_hcd* usb_create_shared_hcd (struct hc_driver const*,struct device*,char const*,int *) ;

struct usb_hcd *usb_create_hcd(const struct hc_driver *driver,
  struct device *dev, const char *bus_name)
{
 return usb_create_shared_hcd(driver, dev, bus_name, ((void*)0));
}
