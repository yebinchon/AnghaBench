
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct snd_emu10k1_pcm* private_data; } ;
struct snd_emu10k1_pcm {scalar_t__ start_addr; int * memblk; int ** voices; int emu; int * extra; } ;
struct snd_emu10k1 {int dummy; } ;


 int NUM_EFX_PLAYBACK ;
 int snd_emu10k1_free_pages (struct snd_emu10k1*,int *) ;
 int snd_emu10k1_voice_free (int ,int *) ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 struct snd_emu10k1* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_emu10k1_efx_playback_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_emu10k1 *emu = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_emu10k1_pcm *epcm;
 int i;

 if (runtime->private_data == ((void*)0))
  return 0;
 epcm = runtime->private_data;
 if (epcm->extra) {
  snd_emu10k1_voice_free(epcm->emu, epcm->extra);
  epcm->extra = ((void*)0);
 }
 for (i = 0; i < NUM_EFX_PLAYBACK; i++) {
  if (epcm->voices[i]) {
   snd_emu10k1_voice_free(epcm->emu, epcm->voices[i]);
   epcm->voices[i] = ((void*)0);
  }
 }
 if (epcm->memblk) {
  snd_emu10k1_free_pages(emu, epcm->memblk);
  epcm->memblk = ((void*)0);
  epcm->start_addr = 0;
 }
 snd_pcm_lib_free_pages(substream);
 return 0;
}
