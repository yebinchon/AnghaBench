
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u8 ;


 int QT_SET_GET_DEVICE ;
 int QU2BOXPWRON ;
 int USBD_TRANSFER_DIRECTION_OUT ;
 int usb_control_msg (int ,unsigned int,int ,int ,int ,int,int *,int,int) ;
 unsigned int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int qt2_boxpoweron(struct usb_serial *serial)
{
 int result;
 __u8 Direcion;
 unsigned int pipe;
 Direcion = USBD_TRANSFER_DIRECTION_OUT;
 pipe = usb_rcvctrlpipe(serial->dev, 0);
 result = usb_control_msg(serial->dev, pipe, QT_SET_GET_DEVICE,
    Direcion, QU2BOXPWRON, 0x00, ((void*)0), 0x00,
    5000);
 return result;
}
