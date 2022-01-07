
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct usba_udc {int lock; TYPE_1__* pdev; } ;
struct TYPE_6__ {int status; int (* complete ) (TYPE_2__*,TYPE_3__*) ;int actual; int dma; int length; } ;
struct usba_request {TYPE_3__ req; scalar_t__ mapped; int queue; } ;
struct TYPE_5__ {int name; } ;
struct usba_ep {TYPE_2__ ep; scalar_t__ is_in; struct usba_udc* udc; } ;
struct TYPE_4__ {int dev; } ;


 int DBG (int,char*,int ,struct usba_request*,int,int ) ;
 int DBG_GADGET ;
 int DBG_REQ ;
 int DMA_ADDR_INVALID ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 int WARN_ON (int) ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void
request_complete(struct usba_ep *ep, struct usba_request *req, int status)
{
 struct usba_udc *udc = ep->udc;

 WARN_ON(!list_empty(&req->queue));

 if (req->req.status == -EINPROGRESS)
  req->req.status = status;

 if (req->mapped) {
  dma_unmap_single(
   &udc->pdev->dev, req->req.dma, req->req.length,
   ep->is_in ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
  req->req.dma = DMA_ADDR_INVALID;
  req->mapped = 0;
 }

 DBG(DBG_GADGET | DBG_REQ,
  "%s: req %p complete: status %d, actual %u\n",
  ep->ep.name, req, req->req.status, req->req.actual);

 spin_unlock(&udc->lock);
 req->req.complete(&ep->ep, &req->req);
 spin_lock(&udc->lock);
}
