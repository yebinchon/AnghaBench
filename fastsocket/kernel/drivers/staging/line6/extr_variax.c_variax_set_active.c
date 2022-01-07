
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int variax_activate ;
struct usb_line6_variax {int* buffer_activate; int line6; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t VARIAX_OFFSET_ACTIVATE ;
 int line6_send_raw_message_async (int *,int*,int) ;
 scalar_t__ simple_strtoul (char const*,int *,int) ;
 int to_usb_interface (struct device*) ;
 struct usb_line6_variax* usb_get_intfdata (int ) ;

__attribute__((used)) static ssize_t variax_set_active(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 struct usb_line6_variax *variax = usb_get_intfdata(to_usb_interface(dev));
 int value = simple_strtoul(buf, ((void*)0), 10) ? 1 : 0;
 variax->buffer_activate[VARIAX_OFFSET_ACTIVATE] = value;
 line6_send_raw_message_async(&variax->line6, variax->buffer_activate,
         sizeof(variax_activate));
 return count;
}
