
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_endpoint {int desc; } ;
struct usb_device {int speed; } ;


 int BUG () ;
 unsigned int EP_INTERVAL (unsigned int) ;




 int usb_endpoint_xfer_bulk (int *) ;
 int usb_endpoint_xfer_control (int *) ;
 int usb_endpoint_xfer_int (int *) ;
 int usb_endpoint_xfer_isoc (int *) ;
 unsigned int xhci_parse_exponent_interval (struct usb_device*,struct usb_host_endpoint*) ;
 unsigned int xhci_parse_frame_interval (struct usb_device*,struct usb_host_endpoint*) ;
 unsigned int xhci_parse_microframe_interval (struct usb_device*,struct usb_host_endpoint*) ;

__attribute__((used)) static unsigned int xhci_get_endpoint_interval(struct usb_device *udev,
  struct usb_host_endpoint *ep)
{
 unsigned int interval = 0;

 switch (udev->speed) {
 case 130:

  if (usb_endpoint_xfer_control(&ep->desc) ||
      usb_endpoint_xfer_bulk(&ep->desc)) {
   interval = xhci_parse_microframe_interval(udev, ep);
   break;
  }


 case 128:
  if (usb_endpoint_xfer_int(&ep->desc) ||
      usb_endpoint_xfer_isoc(&ep->desc)) {
   interval = xhci_parse_exponent_interval(udev, ep);
  }
  break;

 case 131:
  if (usb_endpoint_xfer_isoc(&ep->desc)) {
   interval = xhci_parse_exponent_interval(udev, ep);
   break;
  }






 case 129:
  if (usb_endpoint_xfer_int(&ep->desc) ||
      usb_endpoint_xfer_isoc(&ep->desc)) {

   interval = xhci_parse_frame_interval(udev, ep);
  }
  break;

 default:
  BUG();
 }
 return EP_INTERVAL(interval);
}
