
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int hw; } ;
struct snd_ml403_ac97cr {struct snd_pcm_substream* playback_substream; } ;


 int CR_FIFO_SIZE ;
 int PDEBUG (int ,char*) ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 int WORK_INFO ;
 int snd_ml403_ac97cr_playback ;
 int snd_pcm_hw_constraint_step (struct snd_pcm_runtime*,int ,int ,int) ;
 struct snd_ml403_ac97cr* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_ml403_ac97cr_playback_open(struct snd_pcm_substream *substream)
{
 struct snd_ml403_ac97cr *ml403_ac97cr;
 struct snd_pcm_runtime *runtime;

 ml403_ac97cr = snd_pcm_substream_chip(substream);
 runtime = substream->runtime;

 PDEBUG(WORK_INFO, "open(playback)\n");
 ml403_ac97cr->playback_substream = substream;
 runtime->hw = snd_ml403_ac97cr_playback;

 snd_pcm_hw_constraint_step(runtime, 0,
       SNDRV_PCM_HW_PARAM_PERIOD_BYTES,
       CR_FIFO_SIZE / 2);
 return 0;
}
