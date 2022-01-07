
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {int runtime; TYPE_3__* pstr; struct snd_soc_pcm_runtime* private_data; } ;
struct psc_dma_stream {scalar_t__ period_start; scalar_t__ period_current_pt; } ;
struct psc_dma {struct psc_dma_stream playback; struct psc_dma_stream capture; } ;
typedef int snd_pcm_uframes_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_6__ {scalar_t__ stream; } ;
struct TYPE_5__ {TYPE_1__* cpu_dai; } ;
struct TYPE_4__ {struct psc_dma* private_data; } ;


 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int bytes_to_frames (int ,scalar_t__) ;

__attribute__((used)) static snd_pcm_uframes_t
psc_dma_pointer(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct psc_dma *psc_dma = rtd->dai->cpu_dai->private_data;
 struct psc_dma_stream *s;
 dma_addr_t count;

 if (substream->pstr->stream == SNDRV_PCM_STREAM_CAPTURE)
  s = &psc_dma->capture;
 else
  s = &psc_dma->playback;

 count = s->period_current_pt - s->period_start;

 return bytes_to_frames(substream->runtime, count);
}
