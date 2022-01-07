
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int ENODATA ;
 int EPIPE ;
 int USB_CTRL_GET_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_DT_STRING ;
 int USB_REQ_GET_DESCRIPTOR ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int,unsigned short,void*,int,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int usb_get_string(struct usb_device *dev, unsigned short langid,
     unsigned char index, void *buf, int size)
{
 int i;
 int result;

 for (i = 0; i < 3; ++i) {

  result = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0),
   USB_REQ_GET_DESCRIPTOR, USB_DIR_IN,
   (USB_DT_STRING << 8) + index, langid, buf, size,
   USB_CTRL_GET_TIMEOUT);
  if (result == 0 || result == -EPIPE)
   continue;
  if (result > 1 && ((u8 *) buf)[1] != USB_DT_STRING) {
   result = -ENODATA;
   continue;
  }
  break;
 }
 return result;
}
