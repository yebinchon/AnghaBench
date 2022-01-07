
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usblp {int ifnum; size_t current_protocol; int dev; TYPE_1__* protocol; } ;
struct TYPE_2__ {int alt_setting; } ;


 int USBLP_CTL_TIMEOUT ;
 int USBLP_REQ_GET_ID ;
 int USB_TYPE_CLASS ;
 int dbg (char*,int,int,int,int,int,int,int) ;
 int usb_control_msg (int ,int ,int,int,int,int,void*,int,int ) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int usblp_ctrl_msg(struct usblp *usblp, int request, int type, int dir, int recip, int value, void *buf, int len)
{
 int retval;
 int index = usblp->ifnum;




 if ((request == USBLP_REQ_GET_ID) && (type == USB_TYPE_CLASS)) {
   index = (usblp->ifnum<<8)|usblp->protocol[usblp->current_protocol].alt_setting;
 }

 retval = usb_control_msg(usblp->dev,
  dir ? usb_rcvctrlpipe(usblp->dev, 0) : usb_sndctrlpipe(usblp->dev, 0),
  request, type | dir | recip, value, index, buf, len, USBLP_CTL_TIMEOUT);
 dbg("usblp_control_msg: rq: 0x%02x dir: %d recip: %d value: %d idx: %d len: %#x result: %d",
  request, !!dir, recip, value, index, len, retval);
 return retval < 0 ? retval : 0;
}
