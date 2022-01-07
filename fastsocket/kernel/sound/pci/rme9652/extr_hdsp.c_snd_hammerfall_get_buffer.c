
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; int type; } ;
struct snd_dma_buffer {size_t bytes; TYPE_1__ dev; } ;
struct pci_dev {int dummy; } ;


 int ENOMEM ;
 int SNDRV_DMA_TYPE_DEV ;
 scalar_t__ snd_dma_alloc_pages (int ,int ,size_t,struct snd_dma_buffer*) ;
 scalar_t__ snd_dma_get_reserved_buf (struct snd_dma_buffer*,int ) ;
 int snd_dma_pci_buf_id (struct pci_dev*) ;
 int snd_dma_pci_data (struct pci_dev*) ;

__attribute__((used)) static int snd_hammerfall_get_buffer(struct pci_dev *pci, struct snd_dma_buffer *dmab, size_t size)
{
 dmab->dev.type = SNDRV_DMA_TYPE_DEV;
 dmab->dev.dev = snd_dma_pci_data(pci);
 if (snd_dma_get_reserved_buf(dmab, snd_dma_pci_buf_id(pci))) {
  if (dmab->bytes >= size)
   return 0;
 }
 if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(pci),
    size, dmab) < 0)
  return -ENOMEM;
 return 0;
}
