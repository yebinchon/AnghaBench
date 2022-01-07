
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; TYPE_1__* runtime; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_2__ {int channels; scalar_t__ dma_area; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static int bf5xx_pcm_copy(struct snd_pcm_substream *substream, int channel,
 snd_pcm_uframes_t pos, void *buf, snd_pcm_uframes_t count)
{
 unsigned int *src;
 unsigned int *dst;
 int i;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  src = buf;
  dst = (unsigned int *)substream->runtime->dma_area;

  dst += pos * 8;
  while (count--) {
   for (i = 0; i < substream->runtime->channels; i++)
    *(dst + i) = *src++;
   dst += 8;
  }
 } else {
  src = (unsigned int *)substream->runtime->dma_area;
  dst = buf;

  src += pos * 8;
  while (count--) {
   for (i = 0; i < substream->runtime->channels; i++)
    *dst++ = *(src+i);
   src += 8;
  }
 }

 return 0;
}
