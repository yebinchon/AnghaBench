
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u16 ;


 int PREFUFF_LEVEL_CONSERVATIVE ;
 int QT_GET_SET_PREBUF_TRIG_LVL ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int BoxSetPrebufferLevel(struct usb_serial *serial)
{
 int result;
 __u16 buffer_length;

 buffer_length = PREFUFF_LEVEL_CONSERVATIVE;
 result = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
     QT_GET_SET_PREBUF_TRIG_LVL, 0x40,
     buffer_length, 0, ((void*)0), 0, 300);
 return result;
}
