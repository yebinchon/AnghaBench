
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ca0106 {unsigned int spdif_enable; } ;


 int ca0106_spdif_enable (struct snd_ca0106*) ;
 struct snd_ca0106* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ca0106_shared_spdif_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ca0106 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change = 0;

 val = !!ucontrol->value.integer.value[0];
 change = (emu->spdif_enable != val);
 if (change) {
  emu->spdif_enable = val;
  ca0106_spdif_enable(emu);
 }
        return change;
}
