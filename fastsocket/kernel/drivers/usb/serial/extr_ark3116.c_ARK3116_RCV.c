
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u8 ;
typedef int __u16 ;


 int dbg (char*,int,...) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static inline void ARK3116_RCV(struct usb_serial *serial, int seq,
          __u8 request, __u8 requesttype,
          __u16 value, __u16 index, __u8 expected,
          char *buf)
{
 int result;
 result = usb_control_msg(serial->dev,
     usb_rcvctrlpipe(serial->dev, 0),
     request, requesttype, value, index,
     buf, 0x0000001, 1000);
 if (result)
  dbg("%03d < %d bytes [0x%02X]", seq, result,
      ((unsigned char *)buf)[0]);
 else
  dbg("%03d < 0 bytes", seq);
}
