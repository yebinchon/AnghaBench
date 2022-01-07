
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {size_t number; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; void* private_data; } ;
struct snd_ice1712 {struct snd_pcm_substream** playback_con_substream_ds; int open_mutex; scalar_t__* pcm_reserved; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_rate_constraints (struct snd_ice1712*,struct snd_pcm_substream*) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct snd_ice1712* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_vt1724_2ch_stereo ;
 int * vt1724_playback_dma_regs ;

__attribute__((used)) static int snd_vt1724_playback_indep_open(struct snd_pcm_substream *substream)
{
 struct snd_ice1712 *ice = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 mutex_lock(&ice->open_mutex);

 if (ice->pcm_reserved[substream->number]) {
  mutex_unlock(&ice->open_mutex);
  return -EBUSY;
 }
 mutex_unlock(&ice->open_mutex);
 runtime->private_data = (void *)&vt1724_playback_dma_regs[substream->number];
 ice->playback_con_substream_ds[substream->number] = substream;
 runtime->hw = snd_vt1724_2ch_stereo;
 snd_pcm_set_sync(substream);
 snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);
 set_rate_constraints(ice, substream);
 return 0;
}
