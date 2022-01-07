
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uhci_td {int frame; int fl_list; int list; int dma_handle; } ;
struct uhci_hcd {int td_pool; } ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct uhci_td* dma_pool_alloc (int ,int ,int *) ;

__attribute__((used)) static struct uhci_td *uhci_alloc_td(struct uhci_hcd *uhci)
{
 dma_addr_t dma_handle;
 struct uhci_td *td;

 td = dma_pool_alloc(uhci->td_pool, GFP_ATOMIC, &dma_handle);
 if (!td)
  return ((void*)0);

 td->dma_handle = dma_handle;
 td->frame = -1;

 INIT_LIST_HEAD(&td->list);
 INIT_LIST_HEAD(&td->fl_list);

 return td;
}
