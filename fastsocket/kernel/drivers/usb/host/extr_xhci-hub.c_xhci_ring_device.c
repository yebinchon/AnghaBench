
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xhci_hcd {TYPE_3__** devs; } ;
struct TYPE_6__ {TYPE_2__* eps; } ;
struct TYPE_5__ {TYPE_1__* ring; } ;
struct TYPE_4__ {scalar_t__ dequeue; } ;


 int LAST_EP_INDEX ;
 int xhci_ring_ep_doorbell (struct xhci_hcd*,int,int,int ) ;

void xhci_ring_device(struct xhci_hcd *xhci, int slot_id)
{
 int i;

 for (i = 0; i < LAST_EP_INDEX + 1; i++)
  if (xhci->devs[slot_id]->eps[i].ring &&
      xhci->devs[slot_id]->eps[i].ring->dequeue)
   xhci_ring_ep_doorbell(xhci, slot_id, i, 0);

 return;
}
