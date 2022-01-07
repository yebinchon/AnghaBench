
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int QT_OPEN_CLOSE_CHANNEL ;
 int USBD_TRANSFER_DIRECTION_OUT ;
 int usb_control_msg (int ,unsigned int,int ,int ,int ,int ,int *,int ,int) ;
 unsigned int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int qt2_closeboxchannel(struct usb_serial *serial, __u16 Uart_Number)
{
 int result;
 __u8 direcion;
 unsigned int pipe;
 direcion = USBD_TRANSFER_DIRECTION_OUT;
 pipe = usb_sndctrlpipe(serial->dev, 0);
 result = usb_control_msg(serial->dev, pipe, QT_OPEN_CLOSE_CHANNEL,
    direcion, 0, Uart_Number, ((void*)0), 0, 5000);
 return result;
}
