
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_qtd {int dummy; } ;
struct ehci_hcd {int qtd_pool; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 struct ehci_qtd* dma_pool_alloc (int ,int ,int *) ;
 int ehci_qtd_init (struct ehci_hcd*,struct ehci_qtd*,int ) ;

__attribute__((used)) static struct ehci_qtd *ehci_qtd_alloc (struct ehci_hcd *ehci, gfp_t flags)
{
 struct ehci_qtd *qtd;
 dma_addr_t dma;

 qtd = dma_pool_alloc (ehci->qtd_pool, flags, &dma);
 if (qtd != ((void*)0)) {
  ehci_qtd_init(ehci, qtd, dma);
 }
 return qtd;
}
