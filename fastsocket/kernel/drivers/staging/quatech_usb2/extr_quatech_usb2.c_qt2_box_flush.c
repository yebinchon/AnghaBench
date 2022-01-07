
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;


 int QT2_FLUSH_DEVICE ;
 int usb_control_msg (int ,int ,int ,int,unsigned short,unsigned char,int *,int ,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int qt2_box_flush(struct usb_serial *serial, unsigned char uart_number,
      unsigned short rcv_or_xmit)
{
 int result;
 result = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
  QT2_FLUSH_DEVICE, 0x40, rcv_or_xmit, uart_number, ((void*)0), 0,
  300);
 return result;
}
