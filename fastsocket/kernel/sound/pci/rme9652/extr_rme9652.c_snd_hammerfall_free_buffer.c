
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dev; } ;
struct snd_dma_buffer {TYPE_1__ dev; scalar_t__ area; } ;
struct pci_dev {int dummy; } ;


 int snd_dma_pci_buf_id (struct pci_dev*) ;
 int snd_dma_reserve_buf (struct snd_dma_buffer*,int ) ;

__attribute__((used)) static void snd_hammerfall_free_buffer(struct snd_dma_buffer *dmab, struct pci_dev *pci)
{
 if (dmab->area) {
  dmab->dev.dev = ((void*)0);
  snd_dma_reserve_buf(dmab, snd_dma_pci_buf_id(pci));
 }
}
