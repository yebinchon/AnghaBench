
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * area; } ;
struct viadev {int * idx_table; TYPE_1__ table; } ;
struct snd_pcm_substream {int dummy; } ;
struct pci_dev {int dummy; } ;


 int kfree (int *) ;
 int snd_dma_free_pages (TYPE_1__*) ;

__attribute__((used)) static int clean_via_table(struct viadev *dev, struct snd_pcm_substream *substream,
      struct pci_dev *pci)
{
 if (dev->table.area) {
  snd_dma_free_pages(&dev->table);
  dev->table.area = ((void*)0);
 }
 kfree(dev->idx_table);
 dev->idx_table = ((void*)0);
 return 0;
}
