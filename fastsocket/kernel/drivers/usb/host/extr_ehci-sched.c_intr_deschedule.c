
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ehci_qh_hw {int hw_info2; int hw_next; } ;
struct ehci_qh {scalar_t__ qh_state; int needs_rescan; int qtd_list; struct ehci_qh_hw* hw; } ;
struct ehci_hcd {int dummy; } ;
struct TYPE_2__ {int state; } ;


 int EHCI_LIST_END (struct ehci_hcd*) ;
 scalar_t__ HC_IS_RUNNING (int ) ;
 int QH_CMASK ;
 scalar_t__ QH_STATE_COMPLETING ;
 scalar_t__ QH_STATE_IDLE ;
 scalar_t__ QH_STATE_LINKED ;
 int cpu_to_hc32 (struct ehci_hcd*,int ) ;
 int ehci_err (struct ehci_hcd*,char*,struct ehci_qh*,int) ;
 TYPE_1__* ehci_to_hcd (struct ehci_hcd*) ;
 scalar_t__ list_empty (int *) ;
 int qh_completions (struct ehci_hcd*,struct ehci_qh*) ;
 int qh_schedule (struct ehci_hcd*,struct ehci_qh*) ;
 int qh_unlink_periodic (struct ehci_hcd*,struct ehci_qh*) ;
 int udelay (unsigned int) ;
 int wmb () ;

__attribute__((used)) static void intr_deschedule (struct ehci_hcd *ehci, struct ehci_qh *qh)
{
 unsigned wait;
 struct ehci_qh_hw *hw = qh->hw;
 int rc;





 if (qh->qh_state != QH_STATE_LINKED) {
  if (qh->qh_state == QH_STATE_COMPLETING)
   qh->needs_rescan = 1;
  return;
 }

 qh_unlink_periodic (ehci, qh);






 if (list_empty (&qh->qtd_list)
   || (cpu_to_hc32(ehci, QH_CMASK)
     & hw->hw_info2) != 0)
  wait = 2;
 else
  wait = 55;

 udelay (wait);
 qh->qh_state = QH_STATE_IDLE;
 hw->hw_next = EHCI_LIST_END(ehci);
 wmb ();

 qh_completions(ehci, qh);


 if (!list_empty(&qh->qtd_list) &&
   HC_IS_RUNNING(ehci_to_hcd(ehci)->state)) {
  rc = qh_schedule(ehci, qh);







  if (rc != 0)
   ehci_err(ehci, "can't reschedule qh %p, err %d\n",
     qh, rc);
 }
}
