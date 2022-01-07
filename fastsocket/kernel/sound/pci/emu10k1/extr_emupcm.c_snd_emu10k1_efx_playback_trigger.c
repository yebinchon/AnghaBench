
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {int running; int extra; int * voices; } ;
struct snd_emu10k1 {int reg_lock; int * efx_pcm_mixer; } ;


 int EINVAL ;
 int NUM_EFX_PLAYBACK ;






 int snd_emu10k1_playback_invalidate_cache (struct snd_emu10k1*,int,int ) ;
 int snd_emu10k1_playback_prepare_voice (struct snd_emu10k1*,int ,int,int,int *) ;
 int snd_emu10k1_playback_stop_voice (struct snd_emu10k1*,int ) ;
 int snd_emu10k1_playback_trigger_voice (struct snd_emu10k1*,int ,int,int) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_emu10k1_efx_playback_trigger(struct snd_pcm_substream *substream,
            int cmd)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm = runtime->private_data;
 int i;
 int result = 0;

 spin_lock(&emu->reg_lock);
 switch (cmd) {
 case 130:

  for (i = 0; i < NUM_EFX_PLAYBACK; i++) {
   snd_emu10k1_playback_invalidate_cache(emu, 0, epcm->voices[i]);
  }
  snd_emu10k1_playback_invalidate_cache(emu, 1, epcm->extra);


 case 132:
 case 131:
  snd_emu10k1_playback_prepare_voice(emu, epcm->extra, 1, 1, ((void*)0));
  snd_emu10k1_playback_prepare_voice(emu, epcm->voices[0], 0, 0,
         &emu->efx_pcm_mixer[0]);
  for (i = 1; i < NUM_EFX_PLAYBACK; i++)
   snd_emu10k1_playback_prepare_voice(emu, epcm->voices[i], 0, 0,
          &emu->efx_pcm_mixer[i]);
  snd_emu10k1_playback_trigger_voice(emu, epcm->voices[0], 0, 0);
  snd_emu10k1_playback_trigger_voice(emu, epcm->extra, 1, 1);
  for (i = 1; i < NUM_EFX_PLAYBACK; i++)
   snd_emu10k1_playback_trigger_voice(emu, epcm->voices[i], 0, 0);
  epcm->running = 1;
  break;
 case 128:
 case 129:
 case 133:
  epcm->running = 0;
  for (i = 0; i < NUM_EFX_PLAYBACK; i++) {
   snd_emu10k1_playback_stop_voice(emu, epcm->voices[i]);
  }
  snd_emu10k1_playback_stop_voice(emu, epcm->extra);
  break;
 default:
  result = -EINVAL;
  break;
 }
 spin_unlock(&emu->reg_lock);
 return result;
}
