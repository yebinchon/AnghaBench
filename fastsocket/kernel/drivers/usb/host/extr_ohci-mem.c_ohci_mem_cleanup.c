
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_hcd {int * ed_cache; int * td_cache; } ;


 int dma_pool_destroy (int *) ;

__attribute__((used)) static void ohci_mem_cleanup (struct ohci_hcd *ohci)
{
 if (ohci->td_cache) {
  dma_pool_destroy (ohci->td_cache);
  ohci->td_cache = ((void*)0);
 }
 if (ohci->ed_cache) {
  dma_pool_destroy (ohci->ed_cache);
  ohci->ed_cache = ((void*)0);
 }
}
