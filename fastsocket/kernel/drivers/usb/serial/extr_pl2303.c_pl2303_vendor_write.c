
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_serial {int dev; } ;
typedef int __u16 ;


 int VENDOR_WRITE_REQUEST ;
 int VENDOR_WRITE_REQUEST_TYPE ;
 int dbg (char*,int ,int ,int ,int ,int) ;
 int usb_control_msg (int ,int ,int ,int ,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int pl2303_vendor_write(__u16 value, __u16 index,
  struct usb_serial *serial)
{
 int res = usb_control_msg(serial->dev, usb_sndctrlpipe(serial->dev, 0),
   VENDOR_WRITE_REQUEST, VENDOR_WRITE_REQUEST_TYPE,
   value, index, ((void*)0), 0, 100);
 dbg("0x%x:0x%x:0x%x:0x%x  %d", VENDOR_WRITE_REQUEST_TYPE,
   VENDOR_WRITE_REQUEST, value, index, res);
 return res;
}
