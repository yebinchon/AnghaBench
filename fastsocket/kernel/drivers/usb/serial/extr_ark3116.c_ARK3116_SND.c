
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int dbg (char*,int) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static inline void ARK3116_SND(struct usb_serial *serial, int seq,
          __u8 request, __u8 requesttype,
          __u16 value, __u16 index)
{
 int result;
 result = usb_control_msg(serial->dev,
     usb_sndctrlpipe(serial->dev, 0),
     request, requesttype, value, index,
     ((void*)0), 0x00, 1000);
 dbg("%03d > ok", seq);
}
