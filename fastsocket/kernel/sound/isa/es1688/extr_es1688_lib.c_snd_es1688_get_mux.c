
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_es1688 {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ES1688_REC_DEV ;
 int snd_es1688_mixer_read (struct snd_es1688*,int ) ;
 struct snd_es1688* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_es1688_get_mux(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_es1688 *chip = snd_kcontrol_chip(kcontrol);
 ucontrol->value.enumerated.item[0] = snd_es1688_mixer_read(chip, ES1688_REC_DEV) & 7;
 return 0;
}
