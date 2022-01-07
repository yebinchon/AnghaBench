
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int info; } ;
struct snd_pcm_runtime {TYPE_1__ hw; int private_free; struct snd_cs46xx_pcm* private_data; } ;
struct snd_cs46xx_pcm {int pcm_channel_id; int * pcm_channel; struct snd_pcm_substream* substream; int hw_buf; } ;
struct snd_cs46xx {int (* active_ctrl ) (struct snd_cs46xx*,int) ;scalar_t__ accept_valid; struct snd_cs46xx_pcm* playback_pcm; int spos_mutex; int pci; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int SNDRV_DMA_TYPE_DEV ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int SNDRV_PCM_INFO_MMAP_VALID ;
 int hw_constraints_period_sizes ;
 int kfree (struct snd_cs46xx_pcm*) ;
 struct snd_cs46xx_pcm* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_cs46xx_pcm_free_substream ;
 TYPE_1__ snd_cs46xx_playback ;
 scalar_t__ snd_dma_alloc_pages (int ,int ,int ,int *) ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct snd_cs46xx*,int) ;

__attribute__((used)) static int _cs46xx_playback_open_channel (struct snd_pcm_substream *substream,int pcm_channel_id)
{
 struct snd_cs46xx *chip = snd_pcm_substream_chip(substream);
 struct snd_cs46xx_pcm * cpcm;
 struct snd_pcm_runtime *runtime = substream->runtime;

 cpcm = kzalloc(sizeof(*cpcm), GFP_KERNEL);
 if (cpcm == ((void*)0))
  return -ENOMEM;
 if (snd_dma_alloc_pages(SNDRV_DMA_TYPE_DEV, snd_dma_pci_data(chip->pci),
    PAGE_SIZE, &cpcm->hw_buf) < 0) {
  kfree(cpcm);
  return -ENOMEM;
 }

 runtime->hw = snd_cs46xx_playback;
 runtime->private_data = cpcm;
 runtime->private_free = snd_cs46xx_pcm_free_substream;

 cpcm->substream = substream;
 chip->playback_pcm = cpcm;


 if (chip->accept_valid)
  substream->runtime->hw.info |= SNDRV_PCM_INFO_MMAP_VALID;
 chip->active_ctrl(chip, 1);

 return 0;
}
