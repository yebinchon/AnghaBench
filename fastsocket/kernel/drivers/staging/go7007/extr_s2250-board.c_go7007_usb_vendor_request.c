
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct go7007_usb {int usbdev; } ;
struct go7007 {struct go7007_usb* hpi_context; } ;


 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,void*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int go7007_usb_vendor_request(struct go7007 *go, u16 request,
 u16 value, u16 index, void *transfer_buffer, int length, int in)
{
 struct go7007_usb *usb = go->hpi_context;
 int timeout = 5000;

 if (in) {
  return usb_control_msg(usb->usbdev,
    usb_rcvctrlpipe(usb->usbdev, 0), request,
    USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
    value, index, transfer_buffer, length, timeout);
 } else {
  return usb_control_msg(usb->usbdev,
    usb_sndctrlpipe(usb->usbdev, 0), request,
    USB_TYPE_VENDOR | USB_RECIP_DEVICE,
    value, index, transfer_buffer, length, timeout);
 }
}
