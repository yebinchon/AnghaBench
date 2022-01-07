
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct oxu_hcd {struct ehci_qh* reclaim; TYPE_3__* async; scalar_t__ reclaim_ready; } ;
struct TYPE_5__ {int * qh; } ;
struct ehci_qh {int qtd_list; struct ehci_qh* reclaim; TYPE_1__ qh_next; int qh_state; } ;
struct TYPE_8__ {int state; } ;
struct TYPE_6__ {int * qh; } ;
struct TYPE_7__ {TYPE_2__ qh_next; } ;


 scalar_t__ HC_IS_RUNNING (int ) ;
 int QH_STATE_IDLE ;
 int TIMER_ASYNC_OFF ;
 int TIMER_IAA_WATCHDOG ;
 int list_empty (int *) ;
 TYPE_4__* oxu_to_hcd (struct oxu_hcd*) ;
 int qh_completions (struct oxu_hcd*,struct ehci_qh*) ;
 int qh_link_async (struct oxu_hcd*,struct ehci_qh*) ;
 int qh_put (struct ehci_qh*) ;
 int start_unlink_async (struct oxu_hcd*,struct ehci_qh*) ;
 int timer_action (struct oxu_hcd*,int ) ;
 int timer_action_done (struct oxu_hcd*,int ) ;

__attribute__((used)) static void end_unlink_async(struct oxu_hcd *oxu)
{
 struct ehci_qh *qh = oxu->reclaim;
 struct ehci_qh *next;

 timer_action_done(oxu, TIMER_IAA_WATCHDOG);

 qh->qh_state = QH_STATE_IDLE;
 qh->qh_next.qh = ((void*)0);
 qh_put(qh);


 next = qh->reclaim;
 oxu->reclaim = next;
 oxu->reclaim_ready = 0;
 qh->reclaim = ((void*)0);

 qh_completions(oxu, qh);

 if (!list_empty(&qh->qtd_list)
   && HC_IS_RUNNING(oxu_to_hcd(oxu)->state))
  qh_link_async(oxu, qh);
 else {
  qh_put(qh);




  if (HC_IS_RUNNING(oxu_to_hcd(oxu)->state)
    && oxu->async->qh_next.qh == ((void*)0))
   timer_action(oxu, TIMER_ASYNC_OFF);
 }

 if (next) {
  oxu->reclaim = ((void*)0);
  start_unlink_async(oxu, next);
 }
}
