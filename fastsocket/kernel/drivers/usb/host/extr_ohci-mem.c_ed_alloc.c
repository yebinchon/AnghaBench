
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_hcd {int ed_cache; } ;
struct ed {int dma; int td_list; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int INIT_LIST_HEAD (int *) ;
 struct ed* dma_pool_alloc (int ,int ,int *) ;
 int memset (struct ed*,int ,int) ;

__attribute__((used)) static struct ed *
ed_alloc (struct ohci_hcd *hc, gfp_t mem_flags)
{
 dma_addr_t dma;
 struct ed *ed;

 ed = dma_pool_alloc (hc->ed_cache, mem_flags, &dma);
 if (ed) {
  memset (ed, 0, sizeof (*ed));
  INIT_LIST_HEAD (&ed->td_list);
  ed->dma = dma;
 }
 return ed;
}
