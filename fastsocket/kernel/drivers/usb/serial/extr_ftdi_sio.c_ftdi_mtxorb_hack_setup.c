
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial {TYPE_1__* dev; } ;
struct usb_endpoint_descriptor {scalar_t__ wMaxPacketSize; } ;
struct usb_host_endpoint {scalar_t__ enabled; struct usb_endpoint_descriptor desc; } ;
struct TYPE_2__ {int dev; struct usb_host_endpoint** ep_in; } ;


 scalar_t__ cpu_to_le16 (int) ;
 int dev_info (int *,char*) ;

__attribute__((used)) static int ftdi_mtxorb_hack_setup(struct usb_serial *serial)
{
 struct usb_host_endpoint *ep = serial->dev->ep_in[1];
 struct usb_endpoint_descriptor *ep_desc = &ep->desc;

 if (ep->enabled && ep_desc->wMaxPacketSize == 0) {
  ep_desc->wMaxPacketSize = cpu_to_le16(0x40);
  dev_info(&serial->dev->dev,
    "Fixing invalid wMaxPacketSize on read pipe\n");
 }

 return 0;
}
