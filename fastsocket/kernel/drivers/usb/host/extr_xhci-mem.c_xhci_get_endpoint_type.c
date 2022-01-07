
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usb_host_endpoint {int desc; } ;
struct usb_device {int dummy; } ;


 int BUG () ;
 int BULK_IN_EP ;
 int BULK_OUT_EP ;
 int CTRL_EP ;
 int EP_TYPE (int ) ;
 int INT_IN_EP ;
 int INT_OUT_EP ;
 int ISOC_IN_EP ;
 int ISOC_OUT_EP ;
 int usb_endpoint_dir_in (int *) ;
 scalar_t__ usb_endpoint_xfer_bulk (int *) ;
 scalar_t__ usb_endpoint_xfer_control (int *) ;
 scalar_t__ usb_endpoint_xfer_int (int *) ;
 scalar_t__ usb_endpoint_xfer_isoc (int *) ;

__attribute__((used)) static u32 xhci_get_endpoint_type(struct usb_device *udev,
  struct usb_host_endpoint *ep)
{
 int in;
 u32 type;

 in = usb_endpoint_dir_in(&ep->desc);
 if (usb_endpoint_xfer_control(&ep->desc)) {
  type = EP_TYPE(CTRL_EP);
 } else if (usb_endpoint_xfer_bulk(&ep->desc)) {
  if (in)
   type = EP_TYPE(BULK_IN_EP);
  else
   type = EP_TYPE(BULK_OUT_EP);
 } else if (usb_endpoint_xfer_isoc(&ep->desc)) {
  if (in)
   type = EP_TYPE(ISOC_IN_EP);
  else
   type = EP_TYPE(ISOC_OUT_EP);
 } else if (usb_endpoint_xfer_int(&ep->desc)) {
  if (in)
   type = EP_TYPE(INT_IN_EP);
  else
   type = EP_TYPE(INT_OUT_EP);
 } else {
  BUG();
 }
 return type;
}
