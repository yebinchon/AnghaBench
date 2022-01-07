
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct usb_device {int dummy; } ;


 int DEFAULT_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int dbg (char*,int,int,int,int,char*,int) ;
 int usb_control_msg (struct usb_device*,int ,scalar_t__,int,scalar_t__,scalar_t__,char*,unsigned int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int ch341_control_in(struct usb_device *dev,
       u8 request, u16 value, u16 index,
       char *buf, unsigned bufsize)
{
 int r;
 dbg("ch341_control_in(%02x,%02x,%04x,%04x,%p,%u)", USB_DIR_IN|0x40,
  (int)request, (int)value, (int)index, buf, (int)bufsize);

 r = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0), request,
       USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
       value, index, buf, bufsize, DEFAULT_TIMEOUT);
 return r;
}
