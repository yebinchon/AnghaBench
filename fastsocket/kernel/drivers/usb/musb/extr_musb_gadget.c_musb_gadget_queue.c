
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_request {int buf; } ;
struct usb_ep {int name; } ;
struct TYPE_3__ {scalar_t__ dma; int list; int length; int buf; int status; scalar_t__ actual; } ;
struct musb_request {int mapped; TYPE_1__ request; scalar_t__ tx; int epnum; struct musb_ep* ep; struct musb* musb; } ;
struct TYPE_4__ {int * next; } ;
struct musb_ep {TYPE_2__ req_list; int busy; int desc; scalar_t__ dma; scalar_t__ is_in; int current_epnum; struct musb* musb; } ;
struct musb {int lock; int controller; } ;
typedef int gfp_t ;


 int DBG (int,char*,struct usb_request*,struct usb_request*,...) ;
 scalar_t__ DMA_ADDR_INVALID ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 int EINVAL ;
 int ENODATA ;
 int ESHUTDOWN ;
 scalar_t__ dma_map_single (int ,int ,int ,int ) ;
 int dma_sync_single_for_device (int ,scalar_t__,int ,int ) ;
 scalar_t__ is_dma_capable () ;
 int list_add_tail (int *,TYPE_2__*) ;
 int musb_ep_restart (struct musb*,struct musb_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct musb_ep* to_musb_ep (struct usb_ep*) ;
 struct musb_request* to_musb_request (struct usb_request*) ;

__attribute__((used)) static int musb_gadget_queue(struct usb_ep *ep, struct usb_request *req,
   gfp_t gfp_flags)
{
 struct musb_ep *musb_ep;
 struct musb_request *request;
 struct musb *musb;
 int status = 0;
 unsigned long lockflags;

 if (!ep || !req)
  return -EINVAL;
 if (!req->buf)
  return -ENODATA;

 musb_ep = to_musb_ep(ep);
 musb = musb_ep->musb;

 request = to_musb_request(req);
 request->musb = musb;

 if (request->ep != musb_ep)
  return -EINVAL;

 DBG(4, "<== to %s request=%p\n", ep->name, req);


 request->request.actual = 0;
 request->request.status = -EINPROGRESS;
 request->epnum = musb_ep->current_epnum;
 request->tx = musb_ep->is_in;

 if (is_dma_capable() && musb_ep->dma) {
  if (request->request.dma == DMA_ADDR_INVALID) {
   request->request.dma = dma_map_single(
     musb->controller,
     request->request.buf,
     request->request.length,
     request->tx
      ? DMA_TO_DEVICE
      : DMA_FROM_DEVICE);
   request->mapped = 1;
  } else {
   dma_sync_single_for_device(musb->controller,
     request->request.dma,
     request->request.length,
     request->tx
      ? DMA_TO_DEVICE
      : DMA_FROM_DEVICE);
   request->mapped = 0;
  }
 } else if (!req->buf) {
  return -ENODATA;
 } else
  request->mapped = 0;

 spin_lock_irqsave(&musb->lock, lockflags);


 if (!musb_ep->desc) {
  DBG(4, "req %p queued to %s while ep %s\n",
    req, ep->name, "disabled");
  status = -ESHUTDOWN;
  goto cleanup;
 }


 list_add_tail(&(request->request.list), &(musb_ep->req_list));


 if (!musb_ep->busy && &request->request.list == musb_ep->req_list.next)
  musb_ep_restart(musb, request);

cleanup:
 spin_unlock_irqrestore(&musb->lock, lockflags);
 return status;
}
