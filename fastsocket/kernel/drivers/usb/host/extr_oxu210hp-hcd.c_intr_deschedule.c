
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxu_hcd {int dummy; } ;
struct ehci_qh {int hw_info2; int hw_next; int qh_state; int qtd_list; } ;


 int EHCI_LIST_END ;
 int QH_CMASK ;
 int QH_STATE_IDLE ;
 int cpu_to_le32 (int ) ;
 scalar_t__ list_empty (int *) ;
 int qh_unlink_periodic (struct oxu_hcd*,struct ehci_qh*) ;
 int udelay (unsigned int) ;
 int wmb () ;

__attribute__((used)) static void intr_deschedule(struct oxu_hcd *oxu, struct ehci_qh *qh)
{
 unsigned wait;

 qh_unlink_periodic(oxu, qh);






 if (list_empty(&qh->qtd_list)
  || (cpu_to_le32(QH_CMASK) & qh->hw_info2) != 0)
  wait = 2;
 else
  wait = 55;

 udelay(wait);
 qh->qh_state = QH_STATE_IDLE;
 qh->hw_next = EHCI_LIST_END;
 wmb();
}
