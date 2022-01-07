
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;


 int GET_TIMEOUT ;
 int HZ ;
 int USB_DIR_IN ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_REPORT ;
 int USB_TYPE_CLASS ;
 int usb_control_msg (struct usb_device*,int ,int ,int,unsigned char,int ,void*,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usb_get_report(struct usb_device *dev,
     struct usb_host_interface *inter, unsigned char type,
     unsigned char id, void *buf, int size)
{
 return usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
          USB_REQ_GET_REPORT,
          USB_DIR_IN | USB_TYPE_CLASS |
          USB_RECIP_INTERFACE, (type << 8) + id,
          inter->desc.bInterfaceNumber, buf, size,
          GET_TIMEOUT*HZ);
}
