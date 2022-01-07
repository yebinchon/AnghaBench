
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_request {int (* complete ) (struct usb_ep*,struct usb_request*) ;int status; scalar_t__ length; scalar_t__ actual; struct dummy* context; int buf; } ;
struct usb_ep {int name; } ;
struct dummy_request {int queue; struct usb_request req; } ;
struct dummy_ep {int queue; TYPE_1__* desc; } ;
struct dummy {int lock; int fifo_buf; struct dummy_request fifo_req; int driver; } ;
typedef int gfp_t ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int ESHUTDOWN ;
 scalar_t__ FIFO_SIZE ;
 int USB_DIR_IN ;
 int dev_dbg (int ,char*,struct dummy_ep*,struct usb_request*,int ,scalar_t__,int ) ;
 int ep0name ;
 struct dummy* ep_to_dummy (struct dummy_ep*) ;
 int fifo_complete (struct usb_ep*,struct usb_request*) ;
 int is_enabled (struct dummy*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int memcpy (int ,int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct usb_ep*,struct usb_request*) ;
 int udc_dev (struct dummy*) ;
 struct dummy_ep* usb_ep_to_dummy_ep (struct usb_ep*) ;
 struct dummy_request* usb_request_to_dummy_request (struct usb_request*) ;

__attribute__((used)) static int
dummy_queue (struct usb_ep *_ep, struct usb_request *_req,
  gfp_t mem_flags)
{
 struct dummy_ep *ep;
 struct dummy_request *req;
 struct dummy *dum;
 unsigned long flags;

 req = usb_request_to_dummy_request (_req);
 if (!_req || !list_empty (&req->queue) || !_req->complete)
  return -EINVAL;

 ep = usb_ep_to_dummy_ep (_ep);
 if (!_ep || (!ep->desc && _ep->name != ep0name))
  return -EINVAL;

 dum = ep_to_dummy (ep);
 if (!dum->driver || !is_enabled (dum))
  return -ESHUTDOWN;






 _req->status = -EINPROGRESS;
 _req->actual = 0;
 spin_lock_irqsave (&dum->lock, flags);


 if (ep->desc && (ep->desc->bEndpointAddress & USB_DIR_IN) &&
   list_empty (&dum->fifo_req.queue) &&
   list_empty (&ep->queue) &&
   _req->length <= FIFO_SIZE) {
  req = &dum->fifo_req;
  req->req = *_req;
  req->req.buf = dum->fifo_buf;
  memcpy (dum->fifo_buf, _req->buf, _req->length);
  req->req.context = dum;
  req->req.complete = fifo_complete;

  list_add_tail(&req->queue, &ep->queue);
  spin_unlock (&dum->lock);
  _req->actual = _req->length;
  _req->status = 0;
  _req->complete (_ep, _req);
  spin_lock (&dum->lock);
 } else
  list_add_tail(&req->queue, &ep->queue);
 spin_unlock_irqrestore (&dum->lock, flags);




 return 0;
}
