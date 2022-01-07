
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dai; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct camelot_pcm {unsigned long rx_period_size; unsigned long tx_period_size; scalar_t__ tx_period; scalar_t__ rx_period; } ;
typedef int snd_pcm_uframes_t ;
struct TYPE_4__ {TYPE_1__* cpu_dai; } ;
struct TYPE_3__ {size_t id; } ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int bytes_to_frames (struct snd_pcm_runtime*,unsigned long) ;
 struct camelot_pcm* cam_pcm_data ;

__attribute__((used)) static snd_pcm_uframes_t camelot_pos(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct camelot_pcm *cam = &cam_pcm_data[rtd->dai->cpu_dai->id];
 int recv = substream->stream == SNDRV_PCM_STREAM_PLAYBACK ? 0:1;
 unsigned long pos;







 if (recv)
  pos = cam->rx_period ? cam->rx_period_size : 0;
 else
  pos = cam->tx_period ? cam->tx_period_size : 0;

 return bytes_to_frames(runtime, pos);
}
