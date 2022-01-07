
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u8 ;


 int QT2_GET_SET_REGISTER ;
 int usb_control_msg (int ,int ,int ,int,unsigned short,unsigned char,void*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int qt2_box_get_register(struct usb_serial *serial,
  unsigned char uart_number, unsigned short register_num,
  __u8 *pValue)
{
 int result;
 result = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
   QT2_GET_SET_REGISTER, 0xC0, register_num,
   uart_number, (void *)pValue, sizeof(*pValue), 300);
 return result;
}
