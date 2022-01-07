
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u8 ;


 int QT_HW_FLOW_CONTROL_MASK ;
 int SERIAL_MCR_RTS ;
 int SERIAL_MSR_CTS ;
 unsigned int usb_control_msg (int ,int ,int ,int,int,unsigned int,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int BoxSetHW_FlowCtrl(struct usb_serial *serial, unsigned int index,
        int bSet)
{
 __u8 mcr = 0;
 __u8 msr = 0, MOUT_Value = 0;
 unsigned int status;

 if (bSet == 1) {

  mcr = SERIAL_MCR_RTS;
 }
 else {

  mcr = 0;

 }
 MOUT_Value = mcr << 8;

 if (bSet == 1) {


  msr = SERIAL_MSR_CTS;
 } else {

  msr = 0;
 }
 MOUT_Value |= msr;

 status =
     usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
       QT_HW_FLOW_CONTROL_MASK, 0x40, MOUT_Value,
       index, ((void*)0), 0, 300);
 return status;

}
