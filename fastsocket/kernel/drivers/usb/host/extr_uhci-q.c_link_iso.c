
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uhci_qh {int node; } ;
struct uhci_hcd {TYPE_1__* skel_iso_qh; } ;
struct TYPE_2__ {int node; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static inline void link_iso(struct uhci_hcd *uhci, struct uhci_qh *qh)
{
 list_add_tail(&qh->node, &uhci->skel_iso_qh->node);


}
