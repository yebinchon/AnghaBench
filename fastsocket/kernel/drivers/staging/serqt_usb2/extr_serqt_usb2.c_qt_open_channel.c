
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
struct qt_open_channel_data {int dummy; } ;
typedef int __u16 ;


 int QT_OPEN_CLOSE_CHANNEL ;
 int USBD_TRANSFER_DIRECTION_IN ;
 int usb_control_msg (int ,int ,int ,int ,int,int ,struct qt_open_channel_data*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int qt_open_channel(struct usb_serial *serial, __u16 Uart_Number,
      struct qt_open_channel_data *pDeviceData)
{
 int result;

 result = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
     QT_OPEN_CLOSE_CHANNEL,
     USBD_TRANSFER_DIRECTION_IN, 1, Uart_Number,
     pDeviceData,
     sizeof(struct qt_open_channel_data), 300);

 return result;

}
