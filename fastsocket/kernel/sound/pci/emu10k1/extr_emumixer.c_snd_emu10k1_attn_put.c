
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1_pcm_mixer {int* attn; TYPE_4__* epcm; } ;
struct snd_emu10k1 {int reg_lock; struct snd_emu10k1_pcm_mixer* pcm_mixer; } ;
struct TYPE_5__ {int* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; int id; } ;
struct TYPE_8__ {TYPE_3__** voices; } ;
struct TYPE_7__ {int number; } ;


 int VTFT_VOLUMETARGET ;
 size_t snd_ctl_get_ioffidx (struct snd_kcontrol*,int *) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int ,int) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_emu10k1_attn_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 unsigned long flags;
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 struct snd_emu10k1_pcm_mixer *mix =
  &emu->pcm_mixer[snd_ctl_get_ioffidx(kcontrol, &ucontrol->id)];
 int change = 0, idx, val;

 spin_lock_irqsave(&emu->reg_lock, flags);
 for (idx = 0; idx < 3; idx++) {
  val = ucontrol->value.integer.value[idx] & 0xffff;
  if (mix->attn[idx] != val) {
   mix->attn[idx] = val;
   change = 1;
  }
 }
 if (change && mix->epcm) {
  if (mix->epcm->voices[0] && mix->epcm->voices[1]) {
   snd_emu10k1_ptr_write(emu, VTFT_VOLUMETARGET, mix->epcm->voices[0]->number, mix->attn[1]);
   snd_emu10k1_ptr_write(emu, VTFT_VOLUMETARGET, mix->epcm->voices[1]->number, mix->attn[2]);
  } else if (mix->epcm->voices[0]) {
   snd_emu10k1_ptr_write(emu, VTFT_VOLUMETARGET, mix->epcm->voices[0]->number, mix->attn[0]);
  }
 }
 spin_unlock_irqrestore(&emu->reg_lock, flags);
 return change;
}
