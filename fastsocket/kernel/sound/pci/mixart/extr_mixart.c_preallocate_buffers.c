
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int id; } ;
struct snd_pcm_substream {int stream; int number; TYPE_3__* pcm; TYPE_2__ dma_device; struct snd_pcm_substream* next; } ;
struct snd_pcm {TYPE_1__* streams; } ;
struct snd_mixart {int chip_idx; TYPE_4__* mgr; } ;
struct TYPE_8__ {int pci; } ;
struct TYPE_7__ {int device; } ;
struct TYPE_5__ {struct snd_pcm_substream* substream; } ;


 int SNDRV_DMA_TYPE_DEV ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int,int) ;

__attribute__((used)) static void preallocate_buffers(struct snd_mixart *chip, struct snd_pcm *pcm)
{
 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(chip->mgr->pci), 32*1024, 32*1024);
}
