
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbatm_data {struct cxacru_data* driver_data; } ;
struct usb_interface {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cxacru_data {int* card_info; } ;
typedef int ssize_t ;


 int ARRAY_SIZE (char**) ;
 size_t CXINF_LINE_STARTABLE ;
 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,...) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 scalar_t__ unlikely (int) ;
 struct usbatm_data* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t cxacru_sysfs_show_adsl_state(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct usb_interface *intf = to_usb_interface(dev);
 struct usbatm_data *usbatm_instance = usb_get_intfdata(intf);
 struct cxacru_data *instance = usbatm_instance->driver_data;
 u32 value = instance->card_info[CXINF_LINE_STARTABLE];

 static char *str[] = { "running", "stopped" };
 if (unlikely(value >= ARRAY_SIZE(str)))
  return snprintf(buf, PAGE_SIZE, "%u\n", value);
 return snprintf(buf, PAGE_SIZE, "%s\n", str[value]);
}
