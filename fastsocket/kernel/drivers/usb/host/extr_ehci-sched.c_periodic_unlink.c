
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union ehci_shadow {void* ptr; } ;
struct ehci_hcd {scalar_t__* periodic; TYPE_1__* dummy; int use_dummy_qh; union ehci_shadow* pshadow; } ;
typedef scalar_t__ __hc32 ;
struct TYPE_2__ {scalar_t__ qh_dma; } ;


 scalar_t__ EHCI_LIST_END (struct ehci_hcd*) ;
 int Q_NEXT_TYPE (struct ehci_hcd*,scalar_t__) ;
 union ehci_shadow* periodic_next_shadow (struct ehci_hcd*,union ehci_shadow*,int ) ;
 scalar_t__* shadow_next_periodic (struct ehci_hcd*,union ehci_shadow*,int ) ;

__attribute__((used)) static void periodic_unlink (struct ehci_hcd *ehci, unsigned frame, void *ptr)
{
 union ehci_shadow *prev_p = &ehci->pshadow[frame];
 __hc32 *hw_p = &ehci->periodic[frame];
 union ehci_shadow here = *prev_p;


 while (here.ptr && here.ptr != ptr) {
  prev_p = periodic_next_shadow(ehci, prev_p,
    Q_NEXT_TYPE(ehci, *hw_p));
  hw_p = shadow_next_periodic(ehci, &here,
    Q_NEXT_TYPE(ehci, *hw_p));
  here = *prev_p;
 }

 if (!here.ptr)
  return;




 *prev_p = *periodic_next_shadow(ehci, &here,
   Q_NEXT_TYPE(ehci, *hw_p));

 if (!ehci->use_dummy_qh ||
     *shadow_next_periodic(ehci, &here, Q_NEXT_TYPE(ehci, *hw_p))
   != EHCI_LIST_END(ehci))
  *hw_p = *shadow_next_periodic(ehci, &here,
    Q_NEXT_TYPE(ehci, *hw_p));
 else
  *hw_p = ehci->dummy->qh_dma;
}
