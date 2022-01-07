
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;


 int ch341_control_out (struct usb_device*,int,int ,int ) ;
 int dbg (char*,int ) ;

__attribute__((used)) static int ch341_set_handshake(struct usb_device *dev, u8 control)
{
 dbg("ch341_set_handshake(0x%02x)", control);
 return ch341_control_out(dev, 0xa4, ~control, 0);
}
