
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pxa_ep {int queue; } ;
struct TYPE_2__ {int length; } ;
struct pxa27x_request {scalar_t__ in_use; int queue; TYPE_1__ req; } ;


 int UDCCSR ;
 int ep_vdbg (struct pxa_ep*,char*,struct pxa27x_request*,int ,int ) ;
 int is_ep0 (struct pxa_ep*) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int pio_irq_disable (struct pxa_ep*) ;
 int udc_ep_readl (struct pxa_ep*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ep_del_request(struct pxa_ep *ep, struct pxa27x_request *req)
{
 if (unlikely(!req))
  return;
 ep_vdbg(ep, "req:%p, lg=%d, udccsr=0x%03x\n", req,
  req->req.length, udc_ep_readl(ep, UDCCSR));

 list_del_init(&req->queue);
 req->in_use = 0;
 if (!is_ep0(ep) && list_empty(&ep->queue))
  pio_irq_disable(ep);
}
