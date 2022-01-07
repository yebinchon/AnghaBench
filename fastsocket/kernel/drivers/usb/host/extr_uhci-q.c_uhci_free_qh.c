
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uhci_qh {scalar_t__ state; int dma_handle; scalar_t__ dummy_td; TYPE_1__* hep; scalar_t__ udev; int node; int queue; } ;
struct uhci_hcd {int qh_pool; } ;
struct TYPE_2__ {int * hcpriv; } ;


 scalar_t__ QH_STATE_IDLE ;
 int WARN_ON (int) ;
 int dev_WARN (int ,char*,struct uhci_qh*) ;
 int dma_pool_free (int ,struct uhci_qh*,int ) ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int uhci_dev (struct uhci_hcd*) ;
 int uhci_free_td (struct uhci_hcd*,scalar_t__) ;

__attribute__((used)) static void uhci_free_qh(struct uhci_hcd *uhci, struct uhci_qh *qh)
{
 WARN_ON(qh->state != QH_STATE_IDLE && qh->udev);
 if (!list_empty(&qh->queue))
  dev_WARN(uhci_dev(uhci), "qh %p list not empty!\n", qh);

 list_del(&qh->node);
 if (qh->udev) {
  qh->hep->hcpriv = ((void*)0);
  if (qh->dummy_td)
   uhci_free_td(uhci, qh->dummy_td);
 }
 dma_pool_free(uhci->qh_pool, qh, qh->dma_handle);
}
