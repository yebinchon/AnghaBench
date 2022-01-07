
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sgio2audio {int ad1843; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ad1843_get_gain (int *,int) ;
 struct snd_sgio2audio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int sgio2audio_gain_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sgio2audio *chip = snd_kcontrol_chip(kcontrol);
 int vol;

 vol = ad1843_get_gain(&chip->ad1843, (int)kcontrol->private_value);

 ucontrol->value.integer.value[0] = (vol >> 8) & 0xFF;
 ucontrol->value.integer.value[1] = vol & 0xFF;

 return 0;
}
