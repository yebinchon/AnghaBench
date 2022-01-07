
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {int page_mutex; } ;


 int AC97_SIGMATEL_BIAS1 ;
 int AC97_SIGMATEL_BIAS2 ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_ac97_update_bits (struct snd_ac97*,int ,int,int) ;
 int snd_ac97_write (struct snd_ac97*,int ,int) ;
 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ac97_stac9708_put_bias(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 int err;

 mutex_lock(&ac97->page_mutex);
 snd_ac97_write(ac97, AC97_SIGMATEL_BIAS1, 0xabba);
 err = snd_ac97_update_bits(ac97, AC97_SIGMATEL_BIAS2, 0x0010,
       (ucontrol->value.integer.value[0] & 1) << 4);
 snd_ac97_write(ac97, AC97_SIGMATEL_BIAS1, 0);
 mutex_unlock(&ac97->page_mutex);
 return err;
}
