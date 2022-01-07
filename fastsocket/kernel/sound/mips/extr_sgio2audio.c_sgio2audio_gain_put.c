
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sgio2audio {int ad1843; } ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ad1843_get_gain (int *,int ) ;
 int ad1843_set_gain (int *,int ,int) ;
 struct snd_sgio2audio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int sgio2audio_gain_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sgio2audio *chip = snd_kcontrol_chip(kcontrol);
 int newvol, oldvol;

 oldvol = ad1843_get_gain(&chip->ad1843, kcontrol->private_value);
 newvol = (ucontrol->value.integer.value[0] << 8) |
  ucontrol->value.integer.value[1];

 newvol = ad1843_set_gain(&chip->ad1843, kcontrol->private_value,
  newvol);

 return newvol != oldvol;
}
