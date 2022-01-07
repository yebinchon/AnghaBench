
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u16 ;


 int QT_SW_FLOW_CONTROL_DISABLE ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int BoxDisable_SW_FlowCtrl(struct usb_serial *serial, __u16 index)
{
 int result;

 result =
     usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
       QT_SW_FLOW_CONTROL_DISABLE, 0x40, 0, index,
       ((void*)0), 0, 300);
 return result;

}
