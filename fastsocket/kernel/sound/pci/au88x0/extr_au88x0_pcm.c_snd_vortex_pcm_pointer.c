
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int lock; } ;
typedef TYPE_1__ vortex_t ;
struct snd_pcm_substream {TYPE_6__* runtime; int pcm; } ;
struct TYPE_8__ {int dma; } ;
typedef TYPE_2__ stream_t ;
typedef int snd_pcm_uframes_t ;
struct TYPE_9__ {scalar_t__ private_data; } ;


 scalar_t__ VORTEX_PCM_TYPE (int ) ;
 scalar_t__ VORTEX_PCM_WT ;
 int bytes_to_frames (TYPE_6__*,int ) ;
 TYPE_1__* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vortex_adbdma_getlinearpos (TYPE_1__*,int) ;
 int vortex_wtdma_getlinearpos (TYPE_1__*,int) ;

__attribute__((used)) static snd_pcm_uframes_t snd_vortex_pcm_pointer(struct snd_pcm_substream *substream)
{
 vortex_t *chip = snd_pcm_substream_chip(substream);
 stream_t *stream = (stream_t *) substream->runtime->private_data;
 int dma = stream->dma;
 snd_pcm_uframes_t current_ptr = 0;

 spin_lock(&chip->lock);
 if (VORTEX_PCM_TYPE(substream->pcm) != VORTEX_PCM_WT)
  current_ptr = vortex_adbdma_getlinearpos(chip, dma);

 else
  current_ptr = vortex_wtdma_getlinearpos(chip, dma);


 spin_unlock(&chip->lock);
 return (bytes_to_frames(substream->runtime, current_ptr));
}
