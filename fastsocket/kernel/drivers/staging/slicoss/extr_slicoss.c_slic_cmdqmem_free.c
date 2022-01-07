
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_cmdqmem {int * dma_pages; scalar_t__* pages; } ;
struct adapter {int pcidev; struct slic_cmdqmem cmdqmem; } ;


 int PAGE_SIZE ;
 int SLIC_CMDQ_MAXPAGES ;
 int memset (struct slic_cmdqmem*,int ,int) ;
 int pci_free_consistent (int ,int ,void*,int ) ;

__attribute__((used)) static void slic_cmdqmem_free(struct adapter *adapter)
{
 struct slic_cmdqmem *cmdqmem = &adapter->cmdqmem;
 int i;

 for (i = 0; i < SLIC_CMDQ_MAXPAGES; i++) {
  if (cmdqmem->pages[i]) {
   pci_free_consistent(adapter->pcidev,
         PAGE_SIZE,
         (void *) cmdqmem->pages[i],
         cmdqmem->dma_pages[i]);
  }
 }
 memset(cmdqmem, 0, sizeof(struct slic_cmdqmem));
}
