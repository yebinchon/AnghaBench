
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_td {int dma_handle; int fl_list; int list; } ;
struct uhci_hcd {int td_pool; } ;


 int dev_WARN (int ,char*,struct uhci_td*) ;
 int dma_pool_free (int ,struct uhci_td*,int ) ;
 int list_empty (int *) ;
 int uhci_dev (struct uhci_hcd*) ;

__attribute__((used)) static void uhci_free_td(struct uhci_hcd *uhci, struct uhci_td *td)
{
 if (!list_empty(&td->list))
  dev_WARN(uhci_dev(uhci), "td %p still in list!\n", td);
 if (!list_empty(&td->fl_list))
  dev_WARN(uhci_dev(uhci), "td %p still in fl_list!\n", td);

 dma_pool_free(uhci->td_pool, td, td->dma_handle);
}
