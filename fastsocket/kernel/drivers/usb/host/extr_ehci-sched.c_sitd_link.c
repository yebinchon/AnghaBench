
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ehci_sitd* sitd; } ;
struct ehci_sitd {unsigned int frame; int sitd_dma; int hw_next; TYPE_1__ sitd_next; } ;
struct ehci_hcd {int * periodic; TYPE_1__* pshadow; } ;


 int Q_TYPE_SITD ;
 int cpu_to_hc32 (struct ehci_hcd*,int) ;
 int wmb () ;

__attribute__((used)) static inline void
sitd_link (struct ehci_hcd *ehci, unsigned frame, struct ehci_sitd *sitd)
{

 sitd->sitd_next = ehci->pshadow [frame];
 sitd->hw_next = ehci->periodic [frame];
 ehci->pshadow [frame].sitd = sitd;
 sitd->frame = frame;
 wmb ();
 ehci->periodic[frame] = cpu_to_hc32(ehci, sitd->sitd_dma | Q_TYPE_SITD);
}
