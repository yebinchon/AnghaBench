
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_qh {scalar_t__ qh_state; int needs_rescan; struct ehci_qh* reclaim; } ;
struct ehci_hcd {struct ehci_qh* reclaim; } ;
struct TYPE_2__ {int state; } ;


 int HC_IS_RUNNING (int ) ;
 scalar_t__ QH_STATE_COMPLETING ;
 scalar_t__ QH_STATE_LINKED ;
 scalar_t__ QH_STATE_UNLINK_WAIT ;
 TYPE_1__* ehci_to_hcd (struct ehci_hcd*) ;
 int end_unlink_async (struct ehci_hcd*) ;
 int start_unlink_async (struct ehci_hcd*,struct ehci_qh*) ;

__attribute__((used)) static void unlink_async (struct ehci_hcd *ehci, struct ehci_qh *qh)
{

 if (!HC_IS_RUNNING(ehci_to_hcd(ehci)->state) && ehci->reclaim)
  end_unlink_async(ehci);





 if (qh->qh_state != QH_STATE_LINKED) {
  if (qh->qh_state == QH_STATE_COMPLETING)
   qh->needs_rescan = 1;
  return;
 }


 if (ehci->reclaim) {
  struct ehci_qh *last;

  for (last = ehci->reclaim;
    last->reclaim;
    last = last->reclaim)
   continue;
  qh->qh_state = QH_STATE_UNLINK_WAIT;
  last->reclaim = qh;


 } else
  start_unlink_async (ehci, qh);
}
