
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int channels_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; void* private_data; } ;
struct snd_ice1712 {int num_total_dacs; int open_mutex; scalar_t__* pcm_reserved; struct snd_pcm_substream* playback_pro_substream; } ;


 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int VT1724_BUFFER_ALIGN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_rate_constraints (struct snd_ice1712*,struct snd_pcm_substream*) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 TYPE_1__ snd_vt1724_playback_pro ;
 int vt1724_playback_pro_reg ;

__attribute__((used)) static int snd_vt1724_playback_pro_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 int chs, num_indeps;

 runtime->private_data = (void *)&vt1724_playback_pro_reg;
 ice->playback_pro_substream = substream;
 runtime->hw = snd_vt1724_playback_pro;
 snd_pcm_set_sync(substream);
 snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);
 set_rate_constraints(ice, substream);
 mutex_lock(&ice->open_mutex);

 num_indeps = ice->num_total_dacs / 2 - 1;
 for (chs = 0; chs < num_indeps; chs++) {
  if (ice->pcm_reserved[chs])
   break;
 }
 chs = (chs + 1) * 2;
 runtime->hw.channels_max = chs;
 if (chs > 2)
  snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS, 2);
 mutex_unlock(&ice->open_mutex);
 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
       VT1724_BUFFER_ALIGN);
 snd_pcm_hw_constraint_step(runtime, 0, SNDRV_PCM_HW_PARAM_BUFFER_BYTES,
       VT1724_BUFFER_ALIGN);
 return 0;
}
