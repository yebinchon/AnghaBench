
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct acm {TYPE_3__* control; int dev; } ;
struct TYPE_6__ {TYPE_2__* altsetting; } ;
struct TYPE_4__ {int bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int USB_RT_ACM ;
 int dbg (char*,int,int,int,int) ;
 int usb_control_msg (int ,int ,int,int ,int,int ,void*,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int acm_ctrl_msg(struct acm *acm, int request, int value,
       void *buf, int len)
{
 int retval = usb_control_msg(acm->dev, usb_sndctrlpipe(acm->dev, 0),
  request, USB_RT_ACM, value,
  acm->control->altsetting[0].desc.bInterfaceNumber,
  buf, len, 5000);
 dbg("acm_control_msg: rq: 0x%02x val: %#x len: %#x result: %d",
      request, value, len, retval);
 return retval < 0 ? retval : 0;
}
