
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usba_udc {int lock; } ;
struct usba_request {int queue; scalar_t__ using_dma; } ;
struct TYPE_4__ {int * next; } ;
struct TYPE_3__ {int name; } ;
struct usba_ep {int last_dma_status; int index; TYPE_2__ queue; TYPE_1__ ep; struct usba_udc* udc; } ;
struct usb_request {int dummy; } ;
struct usb_ep {int dummy; } ;


 int DBG (int,char*,int ,struct usba_request*) ;
 int DBG_GADGET ;
 int DBG_QUEUE ;
 int ECONNRESET ;
 int EPT_RST ;
 int STATUS ;
 int USBA_DMA_CH_EN ;
 int list_del_init (int *) ;
 int request_complete (struct usba_ep*,struct usba_request*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stop_dma (struct usba_ep*,int*) ;
 int submit_next_request (struct usba_ep*) ;
 struct usba_ep* to_usba_ep (struct usb_ep*) ;
 struct usba_request* to_usba_req (struct usb_request*) ;
 int usba_dma_readl (struct usba_ep*,int ) ;
 int usba_update_req (struct usba_ep*,struct usba_request*,int) ;
 int usba_writel (struct usba_udc*,int ,int) ;

__attribute__((used)) static int usba_ep_dequeue(struct usb_ep *_ep, struct usb_request *_req)
{
 struct usba_ep *ep = to_usba_ep(_ep);
 struct usba_udc *udc = ep->udc;
 struct usba_request *req = to_usba_req(_req);
 unsigned long flags;
 u32 status;

 DBG(DBG_GADGET | DBG_QUEUE, "ep_dequeue: %s, req %p\n",
   ep->ep.name, req);

 spin_lock_irqsave(&udc->lock, flags);

 if (req->using_dma) {




  if (ep->queue.next == &req->queue) {
   status = usba_dma_readl(ep, STATUS);
   if (status & USBA_DMA_CH_EN)
    stop_dma(ep, &status);





   usba_writel(udc, EPT_RST, 1 << ep->index);

   usba_update_req(ep, req, status);
  }
 }





 list_del_init(&req->queue);

 request_complete(ep, req, -ECONNRESET);


 submit_next_request(ep);
 spin_unlock_irqrestore(&udc->lock, flags);

 return 0;
}
