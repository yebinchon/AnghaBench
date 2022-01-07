
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int gpio_mutex; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int AUREON_AC97_STEREO ;
 unsigned short aureon_ac97_read (struct snd_ice1712*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int aureon_ac97_vol_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 unsigned short vol;

 mutex_lock(&ice->gpio_mutex);

 vol = aureon_ac97_read(ice, kcontrol->private_value & 0x7F);
 ucontrol->value.integer.value[0] = 0x1F - (vol & 0x1F);
 if (kcontrol->private_value & AUREON_AC97_STEREO)
  ucontrol->value.integer.value[1] = 0x1F - ((vol >> 8) & 0x1F);

 mutex_unlock(&ice->gpio_mutex);
 return 0;
}
