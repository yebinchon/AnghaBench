
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct xhci_hcd {int num_usb2_ports; int * usb2_ports; } ;
struct TYPE_3__ {int* DeviceRemovable; int* PortPwrCtrlMask; } ;
struct TYPE_4__ {TYPE_1__ hs; } ;
struct usb_hub_descriptor {TYPE_2__ u; scalar_t__ bDescLength; int bDescriptorType; } ;
struct usb_hcd {int dummy; } ;
typedef int port_removable ;
typedef int __u8 ;


 int PORT_DEV_REMOVE ;
 int USB_DT_HUB ;
 scalar_t__ USB_DT_HUB_NONVAR_SIZE ;
 int USB_MAXCHILDREN ;
 int memset (int*,int,int) ;
 int xhci_common_hub_descriptor (struct xhci_hcd*,struct usb_hub_descriptor*,int) ;
 int xhci_readl (struct xhci_hcd*,int ) ;

__attribute__((used)) static void xhci_usb2_hub_descriptor(struct usb_hcd *hcd, struct xhci_hcd *xhci,
  struct usb_hub_descriptor *desc)
{
 int ports;
 u16 temp;
 __u8 port_removable[(USB_MAXCHILDREN + 1 + 7) / 8];
 u32 portsc;
 unsigned int i;

 ports = xhci->num_usb2_ports;

 xhci_common_hub_descriptor(xhci, desc, ports);
 desc->bDescriptorType = USB_DT_HUB;
 temp = 1 + (ports / 8);
 desc->bDescLength = USB_DT_HUB_NONVAR_SIZE + 2 * temp;




 memset(port_removable, 0, sizeof(port_removable));
 for (i = 0; i < ports; i++) {
  portsc = xhci_readl(xhci, xhci->usb2_ports[i]);



  if (portsc & PORT_DEV_REMOVE)



   port_removable[(i + 1) / 8] |= 1 << ((i + 1) % 8);
 }
 memset(desc->u.hs.DeviceRemovable, 0xff,
   sizeof(desc->u.hs.DeviceRemovable));
 memset(desc->u.hs.PortPwrCtrlMask, 0xff,
   sizeof(desc->u.hs.PortPwrCtrlMask));

 for (i = 0; i < (ports + 1 + 7) / 8; i++)
  memset(&desc->u.hs.DeviceRemovable[i], port_removable[i],
    sizeof(__u8));
}
