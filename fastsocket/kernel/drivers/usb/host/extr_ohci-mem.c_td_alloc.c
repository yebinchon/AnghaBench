
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct td {int td_dma; int hwNextTD; } ;
struct ohci_hcd {int td_cache; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int cpu_to_hc32 (struct ohci_hcd*,int ) ;
 struct td* dma_pool_alloc (int ,int ,int *) ;
 int memset (struct td*,int ,int) ;

__attribute__((used)) static struct td *
td_alloc (struct ohci_hcd *hc, gfp_t mem_flags)
{
 dma_addr_t dma;
 struct td *td;

 td = dma_pool_alloc (hc->td_cache, mem_flags, &dma);
 if (td) {

  memset (td, 0, sizeof *td);
  td->hwNextTD = cpu_to_hc32 (hc, dma);
  td->td_dma = dma;

 }
 return td;
}
