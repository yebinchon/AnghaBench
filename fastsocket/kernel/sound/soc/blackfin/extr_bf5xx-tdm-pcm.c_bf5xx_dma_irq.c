
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;


 int snd_pcm_period_elapsed (struct snd_pcm_substream*) ;

__attribute__((used)) static void bf5xx_dma_irq(void *data)
{
 struct snd_pcm_substream *pcm = data;
 snd_pcm_period_elapsed(pcm);
}
