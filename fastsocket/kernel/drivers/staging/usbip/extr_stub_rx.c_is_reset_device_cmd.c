
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {scalar_t__ bRequest; scalar_t__ bRequestType; int wIndex; int wValue; } ;
struct urb {scalar_t__ setup_packet; } ;
typedef scalar_t__ __u16 ;


 scalar_t__ USB_PORT_FEAT_RESET ;
 scalar_t__ USB_REQ_SET_FEATURE ;
 scalar_t__ USB_RT_PORT ;
 scalar_t__ le16_to_cpu (int ) ;
 int usbip_dbg_stub_rx (char*,scalar_t__) ;

__attribute__((used)) static int is_reset_device_cmd(struct urb *urb)
{
 struct usb_ctrlrequest *req;
 __u16 value;
 __u16 index;

 req = (struct usb_ctrlrequest *) urb->setup_packet;
 value = le16_to_cpu(req->wValue);
 index = le16_to_cpu(req->wIndex);

 if ((req->bRequest == USB_REQ_SET_FEATURE) &&
   (req->bRequestType == USB_RT_PORT) &&
   (value == USB_PORT_FEAT_RESET)) {
  usbip_dbg_stub_rx("reset_device_cmd, port %u\n", index);
  return 1;
 } else
  return 0;
}
