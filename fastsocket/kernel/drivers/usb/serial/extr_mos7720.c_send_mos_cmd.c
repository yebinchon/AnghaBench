
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct usb_serial {TYPE_2__* dev; } ;
typedef scalar_t__ __u8 ;
typedef int __u16 ;
struct TYPE_5__ {int idProduct; } ;
struct TYPE_6__ {TYPE_1__ descriptor; } ;


 scalar_t__ MOSCHIP_DEVICE_ID_7715 ;
 int MOS_MAX_PORT ;
 scalar_t__ MOS_READ ;
 int MOS_WDR_TIMEOUT ;
 scalar_t__ MOS_WRITE ;
 int dbg (char*,...) ;
 scalar_t__ le16_to_cpu (int ) ;
 int usb_control_msg (TYPE_2__*,unsigned int,scalar_t__,scalar_t__,int,int,void*,int,int ) ;
 unsigned int usb_rcvctrlpipe (TYPE_2__*,int ) ;
 unsigned int usb_sndctrlpipe (TYPE_2__*,int ) ;

__attribute__((used)) static int send_mos_cmd(struct usb_serial *serial, __u8 request, __u16 value,
   __u16 index, void *data)
{
 int status;
 unsigned int pipe;
 u16 product = le16_to_cpu(serial->dev->descriptor.idProduct);
 __u8 requesttype;
 __u16 size = 0x0000;

 if (value < MOS_MAX_PORT) {
  if (product == MOSCHIP_DEVICE_ID_7715)
   value = value*0x100+0x100;
  else
   value = value*0x100+0x200;
 } else {
  value = 0x0000;
  if ((product == MOSCHIP_DEVICE_ID_7715) &&
      (index != 0x08)) {
   dbg("serial->product== MOSCHIP_DEVICE_ID_7715");

  }
 }

 if (request == MOS_WRITE) {
  request = (__u8)MOS_WRITE;
  requesttype = (__u8)0x40;
  value = value + (__u16)*((unsigned char *)data);
  data = ((void*)0);
  pipe = usb_sndctrlpipe(serial->dev, 0);
 } else {
  request = (__u8)MOS_READ;
  requesttype = (__u8)0xC0;
  size = 0x01;
  pipe = usb_rcvctrlpipe(serial->dev, 0);
 }

 status = usb_control_msg(serial->dev, pipe, request, requesttype,
     value, index, data, size, MOS_WDR_TIMEOUT);

 if (status < 0)
  dbg("Command Write failed Value %x index %x\n", value, index);

 return status;
}
