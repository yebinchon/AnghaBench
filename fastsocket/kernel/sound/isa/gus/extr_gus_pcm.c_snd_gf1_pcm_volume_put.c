
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_gus_voice {int number; struct gus_pcm_private* private_data; int pcm; } ;
struct TYPE_6__ {unsigned short pcm_volume_level_left1; unsigned short pcm_volume_level_right1; int pcm_volume_level_left; int pcm_volume_level_right; struct snd_gus_voice* voices; } ;
struct snd_gus_card {int voice_alloc; int reg_lock; TYPE_3__ gf1; int pcm_volume_level_lock; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct gus_pcm_private {int flags; int final_volume; struct snd_gus_voice** pvoices; } ;


 int SNDRV_GF1_PCM_PFLG_ACTIVE ;
 int SNDRV_GF1_VB_VOLUME_CONTROL ;
 int SNDRV_GF1_VW_VOLUME ;
 int snd_gf1_ctrl_stop (struct snd_gus_card*,int ) ;
 int snd_gf1_lvol_to_gvol_raw (unsigned short) ;
 int snd_gf1_select_voice (struct snd_gus_card*,int ) ;
 int snd_gf1_write16 (struct snd_gus_card*,int ,unsigned short) ;
 struct snd_gus_card* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_gf1_pcm_volume_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_gus_card *gus = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 int change;
 unsigned int idx;
 unsigned short val1, val2, vol;
 struct gus_pcm_private *pcmp;
 struct snd_gus_voice *pvoice;

 val1 = ucontrol->value.integer.value[0] & 127;
 val2 = ucontrol->value.integer.value[1] & 127;
 spin_lock_irqsave(&gus->pcm_volume_level_lock, flags);
 change = val1 != gus->gf1.pcm_volume_level_left1 ||
          val2 != gus->gf1.pcm_volume_level_right1;
 gus->gf1.pcm_volume_level_left1 = val1;
 gus->gf1.pcm_volume_level_right1 = val2;
 gus->gf1.pcm_volume_level_left = snd_gf1_lvol_to_gvol_raw(val1 << 9) << 4;
 gus->gf1.pcm_volume_level_right = snd_gf1_lvol_to_gvol_raw(val2 << 9) << 4;
 spin_unlock_irqrestore(&gus->pcm_volume_level_lock, flags);

 spin_lock_irqsave(&gus->voice_alloc, flags);
 for (idx = 0; idx < 32; idx++) {
  pvoice = &gus->gf1.voices[idx];
  if (!pvoice->pcm)
   continue;
  pcmp = pvoice->private_data;
  if (!(pcmp->flags & SNDRV_GF1_PCM_PFLG_ACTIVE))
   continue;

  spin_lock(&gus->reg_lock);
  snd_gf1_select_voice(gus, pvoice->number);
  snd_gf1_ctrl_stop(gus, SNDRV_GF1_VB_VOLUME_CONTROL);
  vol = pvoice == pcmp->pvoices[0] ? gus->gf1.pcm_volume_level_left : gus->gf1.pcm_volume_level_right;
  snd_gf1_write16(gus, SNDRV_GF1_VW_VOLUME, vol);
  pcmp->final_volume = 1;
  spin_unlock(&gus->reg_lock);
 }
 spin_unlock_irqrestore(&gus->voice_alloc, flags);
 return change;
}
