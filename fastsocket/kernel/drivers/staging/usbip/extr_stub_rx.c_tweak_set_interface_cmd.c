
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ctrlrequest {int wIndex; int wValue; } ;
struct urb {int dev; scalar_t__ setup_packet; } ;
typedef int __u16 ;


 int le16_to_cpu (int ) ;
 int usb_set_interface (int ,int ,int ) ;
 int usbip_dbg_stub_rx (char*,int ,int ) ;
 int usbip_uinfo (char*,int ,int ,...) ;

__attribute__((used)) static int tweak_set_interface_cmd(struct urb *urb)
{
 struct usb_ctrlrequest *req;
 __u16 alternate;
 __u16 interface;
 int ret;

 req = (struct usb_ctrlrequest *) urb->setup_packet;
 alternate = le16_to_cpu(req->wValue);
 interface = le16_to_cpu(req->wIndex);

 usbip_dbg_stub_rx("set_interface: inf %u alt %u\n", interface,
        alternate);

 ret = usb_set_interface(urb->dev, interface, alternate);
 if (ret < 0)
  usbip_uinfo("set_interface error: inf %u alt %u, %d\n",
     interface, alternate, ret);
 else
  usbip_uinfo("set_interface done: inf %u alt %u\n",
       interface,
       alternate);

 return ret;
}
