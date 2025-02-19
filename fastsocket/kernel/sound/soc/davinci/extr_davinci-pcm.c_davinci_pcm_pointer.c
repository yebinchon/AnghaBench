
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {unsigned int buffer_size; scalar_t__ dma_addr; struct davinci_runtime_data* private_data; } ;
struct davinci_runtime_data {int lock; int master_lch; } ;
typedef unsigned int snd_pcm_uframes_t ;
typedef scalar_t__ dma_addr_t ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 unsigned int bytes_to_frames (struct snd_pcm_runtime*,scalar_t__) ;
 int edma_get_position (int ,scalar_t__*,scalar_t__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static snd_pcm_uframes_t
davinci_pcm_pointer(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct davinci_runtime_data *prtd = runtime->private_data;
 unsigned int offset;
 dma_addr_t count;
 dma_addr_t src, dst;

 spin_lock(&prtd->lock);

 edma_get_position(prtd->master_lch, &src, &dst);
 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
  count = src - runtime->dma_addr;
 else
  count = dst - runtime->dma_addr;

 spin_unlock(&prtd->lock);

 offset = bytes_to_frames(runtime, count);
 if (offset >= runtime->buffer_size)
  offset = 0;

 return offset;
}
