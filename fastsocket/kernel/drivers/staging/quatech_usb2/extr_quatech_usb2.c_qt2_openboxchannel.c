
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
struct qt2_status_data {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int QT_OPEN_CLOSE_CHANNEL ;
 int USBD_TRANSFER_DIRECTION_IN ;
 int usb_control_msg (int ,unsigned int,int ,int ,int,int,struct qt2_status_data*,int,int) ;
 unsigned int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int qt2_openboxchannel(struct usb_serial *serial, __u16
  Uart_Number, struct qt2_status_data *status)
{
 int result;
 __u16 length;
 __u8 Direcion;
 unsigned int pipe;
 length = sizeof(struct qt2_status_data);
 Direcion = USBD_TRANSFER_DIRECTION_IN;
 pipe = usb_rcvctrlpipe(serial->dev, 0);
 result = usb_control_msg(serial->dev, pipe, QT_OPEN_CLOSE_CHANNEL,
   Direcion, 0x00, Uart_Number, status, length, 5000);
 return result;
}
