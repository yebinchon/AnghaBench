
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {int reg_mutex; } ;


 unsigned short AC97_EA_SPDIF ;
 int AC97_EXTENDED_STATUS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 unsigned short snd_ac97_read_cache (struct snd_ac97*,int) ;
 int snd_ac97_update_bits_nolock (struct snd_ac97*,int,unsigned short,unsigned short) ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_put_spsa(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 int reg = kcontrol->private_value & 0xff;
 int shift = (kcontrol->private_value >> 8) & 0xff;
 int mask = (kcontrol->private_value >> 16) & 0xff;

 unsigned short value, old, new;
 int change;

 value = (ucontrol->value.integer.value[0] & mask);

 mutex_lock(&ac97->reg_mutex);
 mask <<= shift;
 value <<= shift;
 old = snd_ac97_read_cache(ac97, reg);
 new = (old & ~mask) | value;
 change = old != new;

 if (change) {
  unsigned short extst = snd_ac97_read_cache(ac97, AC97_EXTENDED_STATUS);
  snd_ac97_update_bits_nolock(ac97, AC97_EXTENDED_STATUS, AC97_EA_SPDIF, 0);
  change = snd_ac97_update_bits_nolock(ac97, reg, mask, value);
  if (extst & AC97_EA_SPDIF)
   snd_ac97_update_bits_nolock(ac97, AC97_EXTENDED_STATUS, AC97_EA_SPDIF, AC97_EA_SPDIF);
 }
 mutex_unlock(&ac97->reg_mutex);
 return change;
}
