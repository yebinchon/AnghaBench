
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sgio2audio {int ad1843; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int max; scalar_t__ min; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;


 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int ad1843_get_gain_max (int *,int) ;
 struct snd_sgio2audio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int sgio2audio_gain_info(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_info *uinfo)
{
 struct snd_sgio2audio *chip = snd_kcontrol_chip(kcontrol);

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = 2;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = ad1843_get_gain_max(&chip->ad1843,
          (int)kcontrol->private_value);
 return 0;
}
