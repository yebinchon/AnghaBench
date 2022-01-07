
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ format; int rate; struct m3_dma* private_data; } ;
struct snd_m3 {int reg_lock; } ;
struct m3_dma {int dummy; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ SNDRV_PCM_FORMAT_S16_LE ;
 scalar_t__ SNDRV_PCM_FORMAT_U8 ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_m3_capture_setup (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ;
 int snd_m3_pcm_setup1 (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ;
 int snd_m3_pcm_setup2 (struct snd_m3*,struct m3_dma*,struct snd_pcm_runtime*) ;
 int snd_m3_playback_setup (struct snd_m3*,struct m3_dma*,struct snd_pcm_substream*) ;
 struct snd_m3* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
snd_m3_pcm_prepare(struct snd_pcm_substream *subs)
{
 struct snd_m3 *chip = snd_pcm_substream_chip(subs);
 struct snd_pcm_runtime *runtime = subs->runtime;
 struct m3_dma *s = runtime->private_data;

 if (snd_BUG_ON(!s))
  return -ENXIO;

 if (runtime->format != SNDRV_PCM_FORMAT_U8 &&
     runtime->format != SNDRV_PCM_FORMAT_S16_LE)
  return -EINVAL;
 if (runtime->rate > 48000 ||
     runtime->rate < 8000)
  return -EINVAL;

 spin_lock_irq(&chip->reg_lock);

 snd_m3_pcm_setup1(chip, s, subs);

 if (subs->stream == SNDRV_PCM_STREAM_PLAYBACK)
  snd_m3_playback_setup(chip, s, subs);
 else
  snd_m3_capture_setup(chip, s, subs);

 snd_m3_pcm_setup2(chip, s, runtime);

 spin_unlock_irq(&chip->reg_lock);

 return 0;
}
