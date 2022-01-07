
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int usb_control_msg (int ,int ,int ,int ,int ,int ,char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static inline void ARK3116_RCV_QUIET(struct usb_serial *serial,
         __u8 request, __u8 requesttype,
         __u16 value, __u16 index, char *buf)
{
 usb_control_msg(serial->dev,
   usb_rcvctrlpipe(serial->dev, 0),
   request, requesttype, value, index,
   buf, 0x0000001, 1000);
}
