
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {TYPE_1__* vd; } ;
struct snd_emu10k1 {int card; } ;
struct snd_ctl_elem_id {int dummy; } ;
struct TYPE_2__ {int access; } ;


 int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 int SNDRV_CTL_EVENT_MASK_INFO ;
 int SNDRV_CTL_EVENT_MASK_VALUE ;
 int snd_ctl_build_ioff (struct snd_ctl_elem_id*,struct snd_kcontrol*,int) ;
 int snd_ctl_notify (int ,int,int ) ;

__attribute__((used)) static void snd_emu10k1_pcm_mixer_notify1(struct snd_emu10k1 *emu, struct snd_kcontrol *kctl, int idx, int activate)
{
 struct snd_ctl_elem_id id;

 if (! kctl)
  return;
 if (activate)
  kctl->vd[idx].access &= ~SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 else
  kctl->vd[idx].access |= SNDRV_CTL_ELEM_ACCESS_INACTIVE;
 snd_ctl_notify(emu->card, SNDRV_CTL_EVENT_MASK_VALUE |
         SNDRV_CTL_EVENT_MASK_INFO,
         snd_ctl_build_ioff(&id, kctl, idx));
}
