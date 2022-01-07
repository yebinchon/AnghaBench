
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u16 ;


 int VENDOR_READ_REQUEST ;
 int VENDOR_READ_REQUEST_TYPE ;
 int dbg (char*,int ,int ,int ,int ,int,unsigned char) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,unsigned char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static int pl2303_vendor_read(__u16 value, __u16 index,
  struct usb_serial *serial, unsigned char *buf)
{
 int res = usb_control_msg(serial->dev, usb_rcvctrlpipe(serial->dev, 0),
   VENDOR_READ_REQUEST, VENDOR_READ_REQUEST_TYPE,
   value, index, buf, 1, 100);
 dbg("0x%x:0x%x:0x%x:0x%x  %d - %x", VENDOR_READ_REQUEST_TYPE,
   VENDOR_READ_REQUEST, value, index, res, buf[0]);
 return res;
}
