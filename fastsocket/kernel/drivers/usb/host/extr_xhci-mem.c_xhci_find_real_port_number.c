
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xhci_hcd {int* port_array; int hcs_params1; } ;
struct usb_device {unsigned int portnum; scalar_t__ speed; struct usb_device* parent; } ;


 int DUPLICATE_ENTRY ;
 int HCS_MAX_PORTS (int ) ;
 scalar_t__ USB_SPEED_SUPER ;

__attribute__((used)) static u32 xhci_find_real_port_number(struct xhci_hcd *xhci,
  struct usb_device *udev)
{
 struct usb_device *top_dev;
 unsigned int num_similar_speed_ports;
 unsigned int faked_port_num;
 int i;

 for (top_dev = udev; top_dev->parent && top_dev->parent->parent;
   top_dev = top_dev->parent)
                                   ;
 faked_port_num = top_dev->portnum;
 for (i = 0, num_similar_speed_ports = 0;
   i < HCS_MAX_PORTS(xhci->hcs_params1); i++) {
  u8 port_speed = xhci->port_array[i];





  if (port_speed == 0 || port_speed == DUPLICATE_ENTRY)
   continue;






  if ((port_speed == 0x03) == (udev->speed == USB_SPEED_SUPER))
   num_similar_speed_ports++;
  if (num_similar_speed_ports == faked_port_num)

   return i+1;
 }
 return 0;
}
