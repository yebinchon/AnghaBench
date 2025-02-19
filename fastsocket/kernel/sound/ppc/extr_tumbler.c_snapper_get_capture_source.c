
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pmac {struct pmac_tumbler* mixer_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct pmac_tumbler {int capture_source; } ;


 struct snd_pmac* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snapper_get_capture_source(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_pmac *chip = snd_kcontrol_chip(kcontrol);
 struct pmac_tumbler *mix = chip->mixer_data;

 ucontrol->value.enumerated.item[0] = mix->capture_source;
 return 0;
}
