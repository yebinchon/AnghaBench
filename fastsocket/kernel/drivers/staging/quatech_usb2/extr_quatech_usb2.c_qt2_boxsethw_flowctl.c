
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int QT2_HW_FLOW_CONTROL_MASK ;
 int QT2_SERIAL_MCR_RTS ;
 int QT2_SERIAL_MSR_CTS ;
 int usb_control_msg (int ,int ,int ,int,int,unsigned int,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int qt2_boxsethw_flowctl(struct usb_serial *serial,
  unsigned int UartNumber, bool bSet)
{
 __u8 MCR_Value = 0;
 __u8 MSR_Value = 0;
 __u16 MOUT_Value = 0;

 if (bSet == 1) {
  MCR_Value = QT2_SERIAL_MCR_RTS;


 } else {

  MCR_Value = 0;
 }
 MOUT_Value = MCR_Value << 8;

 if (bSet == 1) {
  MSR_Value = QT2_SERIAL_MSR_CTS;


 } else {

  MSR_Value = 0;
 }
 MOUT_Value |= MSR_Value;
 return usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
   QT2_HW_FLOW_CONTROL_MASK, 0x40, MOUT_Value, UartNumber,
   ((void*)0), 0, 300);
}
