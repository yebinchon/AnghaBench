
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
struct qt_get_device_data {int dummy; } ;
typedef int __u8 ;
typedef int __u16 ;


 int QT_GET_SET_REGISTER ;
 int usb_control_msg (int ,int ,int ,int,unsigned short,unsigned short,void*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int BoxGetRegister(struct usb_serial *serial, unsigned short Uart_Number,
     unsigned short Register_Num, __u8 *pValue)
{
 int result;
 __u16 current_length;

 current_length = sizeof(struct qt_get_device_data);

 result =
     usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
       QT_GET_SET_REGISTER, 0xC0, Register_Num,
       Uart_Number, (void *)pValue, sizeof(*pValue), 300);

 return result;
}
