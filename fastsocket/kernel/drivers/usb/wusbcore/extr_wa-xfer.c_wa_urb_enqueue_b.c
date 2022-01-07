
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wusbhc {int mutex; } ;
struct wusb_dev {int dummy; } ;
struct wahc {struct wusbhc* wusb; } ;
struct wa_xfer {int result; int lock; TYPE_1__* ep; struct wusb_dev* wusb_dev; int gfp; struct wahc* wa; struct urb* urb; } ;
struct urb {int status; int * dev; } ;
struct TYPE_2__ {int hcpriv; } ;


 int EINPROGRESS ;
 int ENODEV ;
 unsigned int __wa_xfer_is_done (struct wa_xfer*) ;
 int __wa_xfer_setup (struct wa_xfer*,struct urb*) ;
 int __wa_xfer_submit (struct wa_xfer*) ;
 struct wusb_dev* __wusb_dev_get_by_usb_dev (struct wusbhc*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rpipe_get_by_ep (struct wahc*,TYPE_1__*,struct urb*,int ) ;
 int rpipe_put (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wa_xfer_completion (struct wa_xfer*) ;
 int wa_xfer_giveback (struct wa_xfer*) ;
 int wusb_dev_put (struct wusb_dev*) ;

__attribute__((used)) static void wa_urb_enqueue_b(struct wa_xfer *xfer)
{
 int result;
 unsigned long flags;
 struct urb *urb = xfer->urb;
 struct wahc *wa = xfer->wa;
 struct wusbhc *wusbhc = wa->wusb;
 struct wusb_dev *wusb_dev;
 unsigned done;

 result = rpipe_get_by_ep(wa, xfer->ep, urb, xfer->gfp);
 if (result < 0)
  goto error_rpipe_get;
 result = -ENODEV;

 mutex_lock(&wusbhc->mutex);
 if (urb->dev == ((void*)0)) {
  mutex_unlock(&wusbhc->mutex);
  goto error_dev_gone;
 }
 wusb_dev = __wusb_dev_get_by_usb_dev(wusbhc, urb->dev);
 if (wusb_dev == ((void*)0)) {
  mutex_unlock(&wusbhc->mutex);
  goto error_dev_gone;
 }
 mutex_unlock(&wusbhc->mutex);

 spin_lock_irqsave(&xfer->lock, flags);
 xfer->wusb_dev = wusb_dev;
 result = urb->status;
 if (urb->status != -EINPROGRESS)
  goto error_dequeued;

 result = __wa_xfer_setup(xfer, urb);
 if (result < 0)
  goto error_xfer_setup;
 result = __wa_xfer_submit(xfer);
 if (result < 0)
  goto error_xfer_submit;
 spin_unlock_irqrestore(&xfer->lock, flags);
 return;





error_xfer_setup:
error_dequeued:
 spin_unlock_irqrestore(&xfer->lock, flags);

 if (wusb_dev)
  wusb_dev_put(wusb_dev);
error_dev_gone:
 rpipe_put(xfer->ep->hcpriv);
error_rpipe_get:
 xfer->result = result;
 wa_xfer_giveback(xfer);
 return;

error_xfer_submit:
 done = __wa_xfer_is_done(xfer);
 xfer->result = result;
 spin_unlock_irqrestore(&xfer->lock, flags);
 if (done)
  wa_xfer_completion(xfer);
}
