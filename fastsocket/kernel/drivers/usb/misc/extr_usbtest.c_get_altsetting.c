
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbtest_dev {int* buf; struct usb_interface* intf; } ;
struct usb_interface {TYPE_2__* altsetting; } ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {int bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__ desc; } ;


 int ERANGE ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_INTERFACE ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int get_altsetting (struct usbtest_dev *dev)
{
 struct usb_interface *iface = dev->intf;
 struct usb_device *udev = interface_to_usbdev (iface);
 int retval;

 retval = usb_control_msg (udev, usb_rcvctrlpipe (udev, 0),
   USB_REQ_GET_INTERFACE, USB_DIR_IN|USB_RECIP_INTERFACE,
   0, iface->altsetting [0].desc.bInterfaceNumber,
   dev->buf, 1, USB_CTRL_GET_TIMEOUT);
 switch (retval) {
 case 1:
  return dev->buf [0];
 case 0:
  retval = -ERANGE;

 default:
  return retval;
 }
}
