
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
struct snd_ac97 {int dummy; } ;
struct cs5535audio {struct snd_ac97* ac97; } ;


 int AC97_AD_MISC ;
 int AC97_AD_VREFD_SHIFT ;
 int snd_ac97_read (struct snd_ac97*,int ) ;
 struct cs5535audio* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int olpc_mic_get(struct snd_kcontrol *kctl, struct snd_ctl_elem_value *v)
{
 struct cs5535audio *cs5535au = snd_kcontrol_chip(kctl);
 struct snd_ac97 *ac97 = cs5535au->ac97;
 int i;

 i = (snd_ac97_read(ac97, AC97_AD_MISC) >> AC97_AD_VREFD_SHIFT) & 0x1;
 v->value.integer.value[0] = i ? 0 : 1;
 return 0;
}
