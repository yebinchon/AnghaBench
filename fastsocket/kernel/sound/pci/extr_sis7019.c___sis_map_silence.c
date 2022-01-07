
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sis7019 {int silence_users; int * suspend_state; int pci; int silence_dma_addr; } ;


 int PCI_DMA_TODEVICE ;
 int pci_map_single (int ,int ,int,int ) ;

__attribute__((used)) static void __sis_map_silence(struct sis7019 *sis)
{

 if (!sis->silence_users)
  sis->silence_dma_addr = pci_map_single(sis->pci,
      sis->suspend_state[0],
      4096, PCI_DMA_TODEVICE);
 sis->silence_users++;
}
