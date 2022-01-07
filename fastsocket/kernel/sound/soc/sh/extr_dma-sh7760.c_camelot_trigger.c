
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; } ;
struct camelot_pcm {int dummy; } ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {size_t id; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;


 struct camelot_pcm* cam_pcm_data ;
 int dmabrg_play_dma_start (struct camelot_pcm*) ;
 int dmabrg_play_dma_stop (struct camelot_pcm*) ;
 int dmabrg_rec_dma_start (struct camelot_pcm*) ;
 int dmabrg_rec_dma_stop (struct camelot_pcm*) ;

__attribute__((used)) static int camelot_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct camelot_pcm *cam = &cam_pcm_data[rtd->dai->cpu_dai->id];
 int recv = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ? 0:1;

 switch (cmd) {
 case 129:
  if (recv)
   dmabrg_rec_dma_start(cam);
  else
   dmabrg_play_dma_start(cam);
  break;
 case 128:
  if (recv)
   dmabrg_rec_dma_stop(cam);
  else
   dmabrg_play_dma_stop(cam);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
