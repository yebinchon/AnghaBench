
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; TYPE_1__* pcm; } ;
struct snd_pcm_runtime {int channels; int rate; } ;
struct snd_au1000 {int ac97; } ;
struct TYPE_2__ {struct snd_au1000* private_data; } ;


 int AC97_PCM_FRONT_DAC_RATE ;
 int AC97_SLOT_3 ;
 int AC97_SLOT_4 ;
 int au1000_set_ac97_xmit_slots (struct snd_au1000*,int) ;
 int snd_ac97_set_rate (int ,int ,int ) ;

__attribute__((used)) static int
snd_au1000_playback_prepare(struct snd_pcm_substream *substream)
{
 struct snd_au1000 *au1000 = substream->pcm->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;

 if (runtime->channels == 1)
  au1000_set_ac97_xmit_slots(au1000, AC97_SLOT_4);
 else
  au1000_set_ac97_xmit_slots(au1000, AC97_SLOT_3 | AC97_SLOT_4);
 snd_ac97_set_rate(au1000->ac97, AC97_PCM_FRONT_DAC_RATE, runtime->rate);
 return 0;
}
