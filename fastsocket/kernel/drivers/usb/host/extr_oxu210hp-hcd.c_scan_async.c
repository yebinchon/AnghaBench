
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct oxu_hcd {scalar_t__ stamp; int reclaim; TYPE_2__* async; } ;
struct TYPE_6__ {struct ehci_qh* qh; } ;
struct ehci_qh {scalar_t__ stamp; scalar_t__ qh_state; TYPE_3__ qh_next; int qtd_list; } ;
typedef enum ehci_timer_action { ____Placeholder_ehci_timer_action } ehci_timer_action ;
struct TYPE_4__ {struct ehci_qh* qh; } ;
struct TYPE_5__ {TYPE_1__ qh_next; } ;


 scalar_t__ QH_STATE_LINKED ;
 int TIMER_ASYNC_SHRINK ;
 int TIMER_IO_WATCHDOG ;
 scalar_t__ likely (int ) ;
 scalar_t__ list_empty (int *) ;
 int qh_completions (struct oxu_hcd*,struct ehci_qh*) ;
 struct ehci_qh* qh_get (struct ehci_qh*) ;
 int qh_put (struct ehci_qh*) ;
 int start_unlink_async (struct oxu_hcd*,struct ehci_qh*) ;
 int timer_action (struct oxu_hcd*,int) ;
 int timer_action_done (struct oxu_hcd*,int) ;

__attribute__((used)) static void scan_async(struct oxu_hcd *oxu)
{
 struct ehci_qh *qh;
 enum ehci_timer_action action = TIMER_IO_WATCHDOG;

 if (!++(oxu->stamp))
  oxu->stamp++;
 timer_action_done(oxu, TIMER_ASYNC_SHRINK);
rescan:
 qh = oxu->async->qh_next.qh;
 if (likely(qh != ((void*)0))) {
  do {

   if (!list_empty(&qh->qtd_list)
     && qh->stamp != oxu->stamp) {
    int temp;






    qh = qh_get(qh);
    qh->stamp = oxu->stamp;
    temp = qh_completions(oxu, qh);
    qh_put(qh);
    if (temp != 0)
     goto rescan;
   }







   if (list_empty(&qh->qtd_list)) {
    if (qh->stamp == oxu->stamp)
     action = TIMER_ASYNC_SHRINK;
    else if (!oxu->reclaim
         && qh->qh_state == QH_STATE_LINKED)
     start_unlink_async(oxu, qh);
   }

   qh = qh->qh_next.qh;
  } while (qh);
 }
 if (action == TIMER_ASYNC_SHRINK)
  timer_action(oxu, TIMER_ASYNC_SHRINK);
}
