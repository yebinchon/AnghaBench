
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ptr; } ;
struct ehci_qh {int qh_dma; int hw; scalar_t__ dummy; TYPE_1__ qh_next; int qtd_list; struct ehci_hcd* ehci; } ;
struct ehci_hcd {int qh_pool; } ;


 int BUG () ;
 int dma_pool_free (int ,int ,int ) ;
 int ehci_dbg (struct ehci_hcd*,char*) ;
 int ehci_qtd_free (struct ehci_hcd*,scalar_t__) ;
 int kfree (struct ehci_qh*) ;
 int list_empty (int *) ;

__attribute__((used)) static void qh_destroy(struct ehci_qh *qh)
{
 struct ehci_hcd *ehci = qh->ehci;


 if (!list_empty (&qh->qtd_list) || qh->qh_next.ptr) {
  ehci_dbg (ehci, "unused qh not empty!\n");
  BUG ();
 }
 if (qh->dummy)
  ehci_qtd_free (ehci, qh->dummy);
 dma_pool_free(ehci->qh_pool, qh->hw, qh->qh_dma);
 kfree(qh);
}
