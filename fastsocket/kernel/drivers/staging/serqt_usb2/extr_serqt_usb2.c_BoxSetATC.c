
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u16 ;


 int PREFUFF_LEVEL_CONSERVATIVE ;
 int QT_SET_ATF ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int BoxSetATC(struct usb_serial *serial, __u16 n_Mode)
{
 int result;
 __u16 buffer_length;

 buffer_length = PREFUFF_LEVEL_CONSERVATIVE;

 result =
     usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
       QT_SET_ATF, 0x40, n_Mode, 0, ((void*)0), 0, 300);

 return result;
}
