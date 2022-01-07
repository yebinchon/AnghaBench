
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis7019 {int silence_dma_addr; int pci; int silence_users; } ;


 int PCI_DMA_TODEVICE ;
 int pci_unmap_single (int ,int ,int,int ) ;

__attribute__((used)) static void __sis_unmap_silence(struct sis7019 *sis)
{

 sis->silence_users--;
 if (!sis->silence_users)
  pci_unmap_single(sis->pci, sis->silence_dma_addr, 4096,
     PCI_DMA_TODEVICE);
}
