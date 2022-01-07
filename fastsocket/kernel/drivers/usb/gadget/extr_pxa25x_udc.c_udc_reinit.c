
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_6__ {int ep_list; TYPE_1__* ep0; } ;
struct pxa25x_udc {TYPE_3__ gadget; struct pxa25x_ep* ep; int ep0state; } ;
struct TYPE_5__ {int ep_list; } ;
struct pxa25x_ep {scalar_t__ pio_irqs; int queue; scalar_t__ stopped; int * desc; TYPE_2__ ep; } ;
struct TYPE_4__ {int ep_list; } ;


 int EP0_IDLE ;
 int INIT_LIST_HEAD (int *) ;
 size_t PXA_UDC_NUM_ENDPOINTS ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void udc_reinit(struct pxa25x_udc *dev)
{
 u32 i;


 INIT_LIST_HEAD (&dev->gadget.ep_list);
 INIT_LIST_HEAD (&dev->gadget.ep0->ep_list);
 dev->ep0state = EP0_IDLE;


 for (i = 0; i < PXA_UDC_NUM_ENDPOINTS; i++) {
  struct pxa25x_ep *ep = &dev->ep[i];

  if (i != 0)
   list_add_tail (&ep->ep.ep_list, &dev->gadget.ep_list);

  ep->desc = ((void*)0);
  ep->stopped = 0;
  INIT_LIST_HEAD (&ep->queue);
  ep->pio_irqs = 0;
 }


}
