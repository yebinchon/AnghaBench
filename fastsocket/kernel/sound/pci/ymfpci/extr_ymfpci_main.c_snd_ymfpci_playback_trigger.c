
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_ymfpci_pcm {int running; TYPE_4__** voices; int use_441_slot; } ;
struct snd_ymfpci {int card; int reg_lock; void** ctrl_playback; TYPE_2__* pcm_mixer; int pcm; } ;
struct snd_pcm_substream {size_t number; int pcm; TYPE_1__* runtime; } ;
struct snd_kcontrol {int id; TYPE_3__* vd; } ;
struct TYPE_8__ {int number; int bank_addr; } ;
struct TYPE_7__ {int access; } ;
struct TYPE_6__ {struct snd_kcontrol* ctl; } ;
struct TYPE_5__ {struct snd_ymfpci_pcm* private_data; } ;


 int EINVAL ;
 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;






 void* cpu_to_le32 (int ) ;
 int snd_ctl_notify (int ,int ,int *) ;
 struct snd_ymfpci* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int snd_ymfpci_playback_trigger(struct snd_pcm_substream *substream,
           int cmd)
{
 struct snd_ymfpci *chip = snd_pcm_substream_chip(substream);
 struct snd_ymfpci_pcm *ypcm = substream->runtime->private_data;
 struct snd_kcontrol *kctl = ((void*)0);
 int result = 0;

 spin_lock(&chip->reg_lock);
 if (ypcm->voices[0] == ((void*)0)) {
  result = -EINVAL;
  goto __unlock;
 }
 switch (cmd) {
 case 130:
 case 132:
 case 131:
  chip->ctrl_playback[ypcm->voices[0]->number + 1] = cpu_to_le32(ypcm->voices[0]->bank_addr);
  if (ypcm->voices[1] != ((void*)0) && !ypcm->use_441_slot)
   chip->ctrl_playback[ypcm->voices[1]->number + 1] = cpu_to_le32(ypcm->voices[1]->bank_addr);
  ypcm->running = 1;
  break;
 case 129:
  if (substream->pcm == chip->pcm && !ypcm->use_441_slot) {
   kctl = chip->pcm_mixer[substream->number].ctl;
   kctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
  }

 case 133:
 case 128:
  chip->ctrl_playback[ypcm->voices[0]->number + 1] = 0;
  if (ypcm->voices[1] != ((void*)0) && !ypcm->use_441_slot)
   chip->ctrl_playback[ypcm->voices[1]->number + 1] = 0;
  ypcm->running = 0;
  break;
 default:
  result = -EINVAL;
  break;
 }
      __unlock:
 spin_unlock(&chip->reg_lock);
 if (kctl)
  snd_ctl_notify(chip->card, SNDRV_CTL_EVENT_MASK_INFO, &kctl->id);
 return result;
}
