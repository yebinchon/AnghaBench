
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct fsl_udc {int td_pool; } ;
struct TYPE_11__ {int status; int (* complete ) (TYPE_4__*,TYPE_5__*) ;int length; int actual; int dma; } ;
struct fsl_req {int dtd_count; TYPE_5__ req; scalar_t__ mapped; struct ep_td_struct* head; int queue; } ;
struct TYPE_10__ {int name; } ;
struct fsl_ep {unsigned char stopped; TYPE_3__* udc; TYPE_4__ ep; } ;
struct ep_td_struct {int td_dma; struct ep_td_struct* next_td_virt; } ;
struct TYPE_7__ {int parent; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;
struct TYPE_9__ {int lock; TYPE_2__ gadget; } ;


 int DMA_ADDR_INVALID ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EINPROGRESS ;
 int ESHUTDOWN ;
 int VDBG (char*,int ,TYPE_5__*,int,int ,int ) ;
 int dma_pool_free (int ,struct ep_td_struct*,int ) ;
 int dma_sync_single_for_cpu (int ,int ,int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 scalar_t__ ep_is_in (struct fsl_ep*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static void done(struct fsl_ep *ep, struct fsl_req *req, int status)
{
 struct fsl_udc *udc = ((void*)0);
 unsigned char stopped = ep->stopped;
 struct ep_td_struct *curr_td, *next_td;
 int j;

 udc = (struct fsl_udc *)ep->udc;

 list_del_init(&req->queue);


 if (req->req.status == -EINPROGRESS)
  req->req.status = status;
 else
  status = req->req.status;


 next_td = req->head;
 for (j = 0; j < req->dtd_count; j++) {
  curr_td = next_td;
  if (j != req->dtd_count - 1) {
   next_td = curr_td->next_td_virt;
  }
  dma_pool_free(udc->td_pool, curr_td, curr_td->td_dma);
 }

 if (req->mapped) {
  dma_unmap_single(ep->udc->gadget.dev.parent,
   req->req.dma, req->req.length,
   ep_is_in(ep)
    ? DMA_TO_DEVICE
    : DMA_FROM_DEVICE);
  req->req.dma = DMA_ADDR_INVALID;
  req->mapped = 0;
 } else
  dma_sync_single_for_cpu(ep->udc->gadget.dev.parent,
   req->req.dma, req->req.length,
   ep_is_in(ep)
    ? DMA_TO_DEVICE
    : DMA_FROM_DEVICE);

 if (status && (status != -ESHUTDOWN))
  VDBG("complete %s req %p stat %d len %u/%u",
   ep->ep.name, &req->req, status,
   req->req.actual, req->req.length);

 ep->stopped = 1;

 spin_unlock(&ep->udc->lock);


 if (req->req.complete)
  req->req.complete(&ep->ep, &req->req);

 spin_lock(&ep->udc->lock);
 ep->stopped = stopped;
}
