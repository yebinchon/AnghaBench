
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_serial_port {TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
typedef int __u16 ;
struct TYPE_2__ {struct usb_device* dev; } ;


 int MCS_RDREQ ;
 int MCS_RD_RTYPE ;
 int MOS_WDR_TIMEOUT ;
 int VENDOR_READ_LENGTH ;
 int dbg (char*,int,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int ,int ,int,int*,int ,int ) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int mos7840_get_reg_sync(struct usb_serial_port *port, __u16 reg,
    __u16 *val)
{
 struct usb_device *dev = port->serial->dev;
 int ret = 0;

 ret = usb_control_msg(dev, usb_rcvctrlpipe(dev, 0), MCS_RDREQ,
         MCS_RD_RTYPE, 0, reg, val, VENDOR_READ_LENGTH,
         MOS_WDR_TIMEOUT);
 dbg("mos7840_get_reg_sync offset is %x, return val %x", reg, *val);
 *val = (*val) & 0x00ff;
 return ret;
}
