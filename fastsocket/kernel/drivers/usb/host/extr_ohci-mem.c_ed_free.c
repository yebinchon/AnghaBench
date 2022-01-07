
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_hcd {int ed_cache; } ;
struct ed {int dma; } ;


 int dma_pool_free (int ,struct ed*,int ) ;

__attribute__((used)) static void
ed_free (struct ohci_hcd *hc, struct ed *ed)
{
 dma_pool_free (hc->ed_cache, ed, ed->dma);
}
