
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * qh; } ;
struct ehci_qh {int qtd_list; struct ehci_qh* reclaim; TYPE_1__ qh_next; int qh_state; } ;
struct ehci_hcd {struct ehci_qh* reclaim; TYPE_3__* async; } ;
struct TYPE_8__ {int state; } ;
struct TYPE_6__ {int * qh; } ;
struct TYPE_7__ {TYPE_2__ qh_next; } ;


 scalar_t__ HC_IS_RUNNING (int ) ;
 int QH_STATE_IDLE ;
 int TIMER_ASYNC_OFF ;
 TYPE_4__* ehci_to_hcd (struct ehci_hcd*) ;
 int iaa_watchdog_done (struct ehci_hcd*) ;
 int list_empty (int *) ;
 int qh_completions (struct ehci_hcd*,struct ehci_qh*) ;
 int qh_link_async (struct ehci_hcd*,struct ehci_qh*) ;
 int qh_put (struct ehci_qh*) ;
 int start_unlink_async (struct ehci_hcd*,struct ehci_qh*) ;
 int timer_action (struct ehci_hcd*,int ) ;

__attribute__((used)) static void end_unlink_async (struct ehci_hcd *ehci)
{
 struct ehci_qh *qh = ehci->reclaim;
 struct ehci_qh *next;

 iaa_watchdog_done(ehci);


 qh->qh_state = QH_STATE_IDLE;
 qh->qh_next.qh = ((void*)0);
 qh_put (qh);


 next = qh->reclaim;
 ehci->reclaim = next;
 qh->reclaim = ((void*)0);

 qh_completions (ehci, qh);

 if (!list_empty (&qh->qtd_list)
   && HC_IS_RUNNING (ehci_to_hcd(ehci)->state))
  qh_link_async (ehci, qh);
 else {



  if (HC_IS_RUNNING (ehci_to_hcd(ehci)->state)
    && ehci->async->qh_next.qh == ((void*)0))
   timer_action (ehci, TIMER_ASYNC_OFF);
 }
 qh_put(qh);

 if (next) {
  ehci->reclaim = ((void*)0);
  start_unlink_async (ehci, next);
 }
}
