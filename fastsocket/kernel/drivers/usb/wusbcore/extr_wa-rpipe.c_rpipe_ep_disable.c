
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct wahc {int rpipe_mutex; int usb_dev; } ;
struct TYPE_2__ {int wRPipeIndex; } ;
struct wa_rpipe {TYPE_1__ descr; } ;
struct usb_host_endpoint {struct wa_rpipe* hcpriv; } ;


 int USB_DIR_OUT ;
 int USB_RECIP_RPIPE ;
 int USB_REQ_RPIPE_ABORT ;
 int USB_TYPE_CLASS ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpipe_put (struct wa_rpipe*) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

void rpipe_ep_disable(struct wahc *wa, struct usb_host_endpoint *ep)
{
 struct wa_rpipe *rpipe;

 mutex_lock(&wa->rpipe_mutex);
 rpipe = ep->hcpriv;
 if (rpipe != ((void*)0)) {
  u16 index = le16_to_cpu(rpipe->descr.wRPipeIndex);

  usb_control_msg(
   wa->usb_dev, usb_rcvctrlpipe(wa->usb_dev, 0),
   USB_REQ_RPIPE_ABORT,
   USB_DIR_OUT | USB_TYPE_CLASS | USB_RECIP_RPIPE,
   0, index, ((void*)0), 0, 1000 );
  rpipe_put(rpipe);
 }
 mutex_unlock(&wa->rpipe_mutex);
}
