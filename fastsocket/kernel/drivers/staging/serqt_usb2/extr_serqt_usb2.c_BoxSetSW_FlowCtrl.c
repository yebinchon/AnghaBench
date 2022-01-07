
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef unsigned char __u16 ;


 int QT_SW_FLOW_CONTROL_MASK ;
 int usb_control_msg (int ,int ,int ,int,unsigned char,unsigned char,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int BoxSetSW_FlowCtrl(struct usb_serial *serial, __u16 index,
        unsigned char stop_char, unsigned char start_char)
{
 __u16 nSWflowout;
 int result;

 nSWflowout = start_char << 8;
 nSWflowout = (unsigned short)stop_char;

 result =
     usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
       QT_SW_FLOW_CONTROL_MASK, 0x40, nSWflowout,
       index, ((void*)0), 0, 300);
 return result;

}
