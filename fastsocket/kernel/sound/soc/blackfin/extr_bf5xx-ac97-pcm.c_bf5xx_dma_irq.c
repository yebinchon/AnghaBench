
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sport_device {int once; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int period_size; struct sport_device* private_data; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int bf5xx_mmap_copy (struct snd_pcm_substream*,int ) ;
 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static void bf5xx_dma_irq(void *data)
{
 struct snd_pcm_substream *pcm = data;
 snd_pcm_period_elapsed(pcm);
}
