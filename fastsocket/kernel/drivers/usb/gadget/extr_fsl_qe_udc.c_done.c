
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct TYPE_7__ {TYPE_1__ dev; } ;
struct qe_udc {int lock; int dev; TYPE_2__ gadget; } ;
struct TYPE_9__ {int status; int (* complete ) (TYPE_3__*,TYPE_4__*) ;int length; int actual; int dma; } ;
struct qe_req {TYPE_4__ req; scalar_t__ mapped; int queue; } ;
struct TYPE_8__ {int name; } ;
struct qe_ep {unsigned char stopped; TYPE_3__ ep; struct qe_udc* udc; } ;


 int DMA_ADDR_INVALID ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 int ESHUTDOWN ;
 int dev_vdbg (int ,char*,int ,TYPE_4__*,int,int ,int ) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ ep_is_in (struct qe_ep*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_3__*,TYPE_4__*) ;

__attribute__((used)) static void done(struct qe_ep *ep, struct qe_req *req, int status)
{
 struct qe_udc *udc = ep->udc;
 unsigned char stopped = ep->stopped;





 list_del_init(&req->queue);


 if (req->req.status == -EINPROGRESS)
  req->req.status = status;
 else
  status = req->req.status;

 if (req->mapped) {
  dma_unmap_single(udc->gadget.dev.parent,
   req->req.dma, req->req.length,
   ep_is_in(ep)
    ? DMA_TO_DEVICE
    : DMA_FROM_DEVICE);
  req->req.dma = DMA_ADDR_INVALID;
  req->mapped = 0;
 } else
  dma_sync_single_for_cpu(udc->gadget.dev.parent,
   req->req.dma, req->req.length,
   ep_is_in(ep)
    ? DMA_TO_DEVICE
    : DMA_FROM_DEVICE);

 if (status && (status != -ESHUTDOWN))
  dev_vdbg(udc->dev, "complete %s req %p stat %d len %u/%u\n",
   ep->ep.name, &req->req, status,
   req->req.actual, req->req.length);


 ep->stopped = 1;
 spin_unlock(&udc->lock);



 if (req->req.complete)
  req->req.complete(&ep->ep, &req->req);

 spin_lock(&udc->lock);

 ep->stopped = stopped;
}
