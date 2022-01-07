
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {int mutex; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char const*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char const*) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

int snd_soc_dapm_put_pin_switch(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 const char *pin = (const char *)kcontrol->private_value;

 mutex_lock(&codec->mutex);

 if (ucontrol->value.integer.value[0])
  snd_soc_dapm_enable_pin(codec, pin);
 else
  snd_soc_dapm_disable_pin(codec, pin);

 snd_soc_dapm_sync(codec);

 mutex_unlock(&codec->mutex);

 return 0;
}
