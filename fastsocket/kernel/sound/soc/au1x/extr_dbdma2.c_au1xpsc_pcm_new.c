
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm {int dummy; } ;
struct snd_card {int dev; } ;


 int AU1XPSC_BUFFER_MIN_BYTES ;
 int SNDRV_DMA_TYPE_DEV ;
 int snd_pcm_lib_preallocate_pages_for_all (struct snd_pcm*,int ,int ,int ,int) ;

__attribute__((used)) static int au1xpsc_pcm_new(struct snd_card *card,
      struct snd_soc_dai *dai,
      struct snd_pcm *pcm)
{
 snd_pcm_lib_preallocate_pages_for_all(pcm, SNDRV_DMA_TYPE_DEV,
  card->dev, AU1XPSC_BUFFER_MIN_BYTES, (4096 * 1024) - 1);

 return 0;
}
