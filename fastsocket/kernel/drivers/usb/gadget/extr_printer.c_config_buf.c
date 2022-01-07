
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct usb_descriptor_header {int dummy; } ;
struct usb_config_descriptor {scalar_t__ bDescriptorType; } ;
typedef enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_2__ {unsigned int bNumConfigurations; } ;


 int EINVAL ;
 int USB_DESC_BUFSIZE ;
 scalar_t__ USB_DT_OTHER_SPEED_CONFIG ;
 int USB_SPEED_HIGH ;
 int config_desc ;
 TYPE_1__ device_desc ;
 struct usb_descriptor_header** fs_printer_function ;
 struct usb_descriptor_header** hs_printer_function ;
 int usb_gadget_config_buf (int *,scalar_t__*,int ,struct usb_descriptor_header const**) ;

__attribute__((used)) static int
config_buf(enum usb_device_speed speed, u8 *buf, u8 type, unsigned index,
  int is_otg)
{
 int len;
 const struct usb_descriptor_header **function;
 function = fs_printer_function;


 if (index >= device_desc.bNumConfigurations)
  return -EINVAL;


 if (!is_otg)
  function++;

 len = usb_gadget_config_buf(&config_desc, buf, USB_DESC_BUFSIZE,
   function);
 if (len < 0)
  return len;
 ((struct usb_config_descriptor *) buf)->bDescriptorType = type;
 return len;
}
