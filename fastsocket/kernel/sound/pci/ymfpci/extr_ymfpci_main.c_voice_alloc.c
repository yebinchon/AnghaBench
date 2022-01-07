
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ymfpci_voice {int use; int pcm; int synth; int midi; } ;
struct snd_ymfpci {struct snd_ymfpci_voice* voices; } ;
typedef enum snd_ymfpci_voice_type { ____Placeholder_snd_ymfpci_voice_type } snd_ymfpci_voice_type ;


 int ENOMEM ;
 int YDSXG_PLAYBACK_VOICES ;



 int snd_ymfpci_hw_start (struct snd_ymfpci*) ;

__attribute__((used)) static int voice_alloc(struct snd_ymfpci *chip,
         enum snd_ymfpci_voice_type type, int pair,
         struct snd_ymfpci_voice **rvoice)
{
 struct snd_ymfpci_voice *voice, *voice2;
 int idx;

 *rvoice = ((void*)0);
 for (idx = 0; idx < YDSXG_PLAYBACK_VOICES; idx += pair ? 2 : 1) {
  voice = &chip->voices[idx];
  voice2 = pair ? &chip->voices[idx+1] : ((void*)0);
  if (voice->use || (voice2 && voice2->use))
   continue;
  voice->use = 1;
  if (voice2)
   voice2->use = 1;
  switch (type) {
  case 129:
   voice->pcm = 1;
   if (voice2)
    voice2->pcm = 1;
   break;
  case 128:
   voice->synth = 1;
   break;
  case 130:
   voice->midi = 1;
   break;
  }
  snd_ymfpci_hw_start(chip);
  if (voice2)
   snd_ymfpci_hw_start(chip);
  *rvoice = voice;
  return 0;
 }
 return -ENOMEM;
}
