
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ct_mixer {int dummy; } ;
struct ct_atc {struct ct_mixer* mixer; } ;
typedef enum CTALSA_MIXER_CTL { ____Placeholder_CTALSA_MIXER_CTL } CTALSA_MIXER_CTL ;


 int get_switch_state (struct ct_mixer*,int) ;
 scalar_t__ snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int ct_alsa_mix_switch_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct ct_mixer *mixer =
  ((struct ct_atc *)snd_kcontrol_chip(kcontrol))->mixer;
 enum CTALSA_MIXER_CTL type = kcontrol->private_value;

 ucontrol->value.integer.value[0] = get_switch_state(mixer, type);
 return 0;
}
