
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_gadget {int dummy; } ;
struct usb_config_descriptor {int bDescriptorType; } ;


 int EINVAL ;
 int USB_BUFSIZ ;
 int config_desc ;
 int gmidi_function ;
 int usb_gadget_config_buf (int *,int *,int ,int ) ;

__attribute__((used)) static int config_buf(struct usb_gadget *gadget,
  u8 *buf, u8 type, unsigned index)
{
 int len;


 if (index != 0) {
  return -EINVAL;
 }
 len = usb_gadget_config_buf(&config_desc,
   buf, USB_BUFSIZ, gmidi_function);
 if (len < 0) {
  return len;
 }
 ((struct usb_config_descriptor *)buf)->bDescriptorType = type;
 return len;
}
