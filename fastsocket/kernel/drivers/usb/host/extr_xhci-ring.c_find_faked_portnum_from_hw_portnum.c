
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xhci_hcd {int* port_array; } ;
struct usb_hcd {scalar_t__ speed; } ;


 int DUPLICATE_ENTRY ;
 scalar_t__ HCD_USB3 ;

__attribute__((used)) static unsigned int find_faked_portnum_from_hw_portnum(struct usb_hcd *hcd,
  struct xhci_hcd *xhci, u32 port_id)
{
 unsigned int i;
 unsigned int num_similar_speed_ports = 0;





 for (i = 0; i < (port_id - 1); i++) {
  u8 port_speed = xhci->port_array[i];





  if (port_speed == 0 || port_speed == DUPLICATE_ENTRY)
   continue;






  if ((port_speed == 0x03) == (hcd->speed == HCD_USB3))
   num_similar_speed_ports++;
 }
 return num_similar_speed_ports;
}
