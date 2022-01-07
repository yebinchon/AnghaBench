
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slic_cmdqmem {size_t pagecnt; int** pages; int * dma_pages; } ;
struct adapter {int pcidev; struct slic_cmdqmem cmdqmem; } ;


 int ASSERT (int) ;
 int PAGE_SIZE ;
 size_t SLIC_CMDQ_MAXPAGES ;
 int* pci_alloc_consistent (int ,int ,int *) ;

__attribute__((used)) static u32 *slic_cmdqmem_addpage(struct adapter *adapter)
{
 struct slic_cmdqmem *cmdqmem = &adapter->cmdqmem;
 u32 *pageaddr;

 if (cmdqmem->pagecnt >= SLIC_CMDQ_MAXPAGES)
  return ((void*)0);
 pageaddr = pci_alloc_consistent(adapter->pcidev,
     PAGE_SIZE,
     &cmdqmem->dma_pages[cmdqmem->pagecnt]);
 if (!pageaddr)
  return ((void*)0);

 ASSERT(((u32) pageaddr & 0xFFFFF000) == (u32) pageaddr);

 cmdqmem->pages[cmdqmem->pagecnt] = pageaddr;
 cmdqmem->pagecnt++;
 return pageaddr;
}
