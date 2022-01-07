
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm {int dummy; } ;
struct snd_card {int dummy; } ;


 int GFP_KERNEL ;
 int PREALLOC_BUFFER ;
 int PREALLOC_BUFFER_MAX ;
 int SNDRV_DMA_TYPE_CONTINUOUS ;
 int snd_dma_continuous_data (int ) ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int ,int ) ;

__attribute__((used)) static int fsi_pcm_new(struct snd_card *card,
         struct snd_soc_dai *dai,
         struct snd_pcm *pcm)
{




 return snd_pcm_lib_preallocate_pages_for_all(
  pcm,
  SNDRV_DMA_TYPE_CONTINUOUS,
  snd_dma_continuous_data(GFP_KERNEL),
  PREALLOC_BUFFER, PREALLOC_BUFFER_MAX);
}
