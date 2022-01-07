
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;


 int QT2_STOP_RECEIVE ;
 int usb_control_msg (int ,int ,int ,int,unsigned short,unsigned short,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int qt2_boxstoprx(struct usb_serial *serial, unsigned short uart_number,
  unsigned short stop)
{
 return usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
  QT2_STOP_RECEIVE, 0x40, stop, uart_number, ((void*)0), 0, 300);
}
