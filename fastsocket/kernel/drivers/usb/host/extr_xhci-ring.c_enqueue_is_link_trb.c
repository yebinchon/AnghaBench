
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xhci_ring {TYPE_1__* enqueue; } ;
struct xhci_link_trb {int control; } ;
struct TYPE_2__ {struct xhci_link_trb link; } ;


 int TRB_TYPE_LINK_LE32 (int ) ;

__attribute__((used)) static int enqueue_is_link_trb(struct xhci_ring *ring)
{
 struct xhci_link_trb *link = &ring->enqueue->link;
 return TRB_TYPE_LINK_LE32(link->control);
}
