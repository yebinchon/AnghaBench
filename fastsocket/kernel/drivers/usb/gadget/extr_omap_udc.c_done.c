
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int status; int (* complete ) (TYPE_4__*,TYPE_5__*) ;int length; int actual; int dma; } ;
struct omap_req {TYPE_5__ req; scalar_t__ mapped; int queue; } ;
struct TYPE_10__ {int name; } ;
struct omap_ep {unsigned int stopped; int bEndpointAddress; TYPE_3__* udc; TYPE_4__ ep; scalar_t__ has_dma; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;
struct TYPE_9__ {int lock; TYPE_2__ gadget; } ;


 int DMA_ADDR_INVALID ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 int ESHUTDOWN ;
 int USB_DIR_IN ;
 int VDBG (char*,int ,TYPE_5__*,int,int ,int ) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ use_dma ;

__attribute__((used)) static void
done(struct omap_ep *ep, struct omap_req *req, int status)
{
 unsigned stopped = ep->stopped;

 list_del_init(&req->queue);

 if (req->req.status == -EINPROGRESS)
  req->req.status = status;
 else
  status = req->req.status;

 if (use_dma && ep->has_dma) {
  if (req->mapped) {
   dma_unmap_single(ep->udc->gadget.dev.parent,
    req->req.dma, req->req.length,
    (ep->bEndpointAddress & USB_DIR_IN)
     ? DMA_TO_DEVICE
     : DMA_FROM_DEVICE);
   req->req.dma = DMA_ADDR_INVALID;
   req->mapped = 0;
  } else
   dma_sync_single_for_cpu(ep->udc->gadget.dev.parent,
    req->req.dma, req->req.length,
    (ep->bEndpointAddress & USB_DIR_IN)
     ? DMA_TO_DEVICE
     : DMA_FROM_DEVICE);
 }


 if (status && status != -ESHUTDOWN)

  VDBG("complete %s req %p stat %d len %u/%u\n",
   ep->ep.name, &req->req, status,
   req->req.actual, req->req.length);


 ep->stopped = 1;
 spin_unlock(&ep->udc->lock);
 req->req.complete(&ep->ep, &req->req);
 spin_lock(&ep->udc->lock);
 ep->stopped = stopped;
}
