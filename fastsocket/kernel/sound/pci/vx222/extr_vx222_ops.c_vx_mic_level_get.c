
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vx_core {int dummy; } ;
struct snd_vx222 {int mic_level; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct vx_core* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int vx_mic_level_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct vx_core *_chip = snd_kcontrol_chip(kcontrol);
 struct snd_vx222 *chip = (struct snd_vx222 *)_chip;
 ucontrol->value.integer.value[0] = chip->mic_level;
 return 0;
}
