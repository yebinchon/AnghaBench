
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * field; } ;
union xhci_trb {TYPE_1__ generic; } ;
struct xhci_hcd {int dummy; } ;


 int xhci_dbg (struct xhci_hcd*,char*,int,int ) ;

void xhci_print_trb_offsets(struct xhci_hcd *xhci, union xhci_trb *trb)
{
 int i;
 for (i = 0; i < 4; ++i)
  xhci_dbg(xhci, "Offset 0x%x = 0x%x\n",
    i*4, trb->generic.field[i]);
}
