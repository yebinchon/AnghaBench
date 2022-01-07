
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cmipci {scalar_t__ spdif_playback_enabled; scalar_t__ spdif_playback_avail; } ;


 int CM_PLAYBACK_SPDF ;
 int CM_REG_FUNCTRL1 ;
 int _snd_cmipci_uswitch_put (struct snd_kcontrol*,struct snd_ctl_elem_value*,int *) ;
 int cmipci_switch_arg_spdif_enable ;
 int cmipci_switch_arg_spdo2dac ;
 int snd_cmipci_clear_bit (struct cmipci*,int ,int ) ;
 int snd_cmipci_set_bit (struct cmipci*,int ,int ) ;
 struct cmipci* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_cmipci_spdout_enable_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct cmipci *chip = snd_kcontrol_chip(kcontrol);
 int changed;
 changed = _snd_cmipci_uswitch_put(kcontrol, ucontrol, &cmipci_switch_arg_spdif_enable);
 changed |= _snd_cmipci_uswitch_put(kcontrol, ucontrol, &cmipci_switch_arg_spdo2dac);
 if (changed) {
  if (ucontrol->value.integer.value[0]) {
   if (chip->spdif_playback_avail)
    snd_cmipci_set_bit(chip, CM_REG_FUNCTRL1, CM_PLAYBACK_SPDF);
  } else {
   if (chip->spdif_playback_avail)
    snd_cmipci_clear_bit(chip, CM_REG_FUNCTRL1, CM_PLAYBACK_SPDF);
  }
 }
 chip->spdif_playback_enabled = ucontrol->value.integer.value[0];
 return changed;
}
