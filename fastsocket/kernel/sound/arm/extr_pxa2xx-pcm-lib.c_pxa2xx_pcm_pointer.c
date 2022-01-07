
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ buffer_size; scalar_t__ dma_addr; struct pxa2xx_runtime_data* private_data; } ;
struct pxa2xx_runtime_data {int dma_ch; } ;
typedef scalar_t__ snd_pcm_uframes_t ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ DSADR (int ) ;
 scalar_t__ DTADR (int ) ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ bytes_to_frames (struct snd_pcm_runtime*,scalar_t__) ;

snd_pcm_uframes_t
pxa2xx_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct pxa2xx_runtime_data *prtd = runtime->private_data;

 dma_addr_t ptr = (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) ?
    DSADR(prtd->dma_ch) : DTADR(prtd->dma_ch);
 snd_pcm_uframes_t x = bytes_to_frames(runtime, ptr - runtime->dma_addr);

 if (x == runtime->buffer_size)
  x = 0;
 return x;
}
