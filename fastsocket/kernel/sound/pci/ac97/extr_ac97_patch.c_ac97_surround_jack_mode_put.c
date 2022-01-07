
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int * item; } ;
struct TYPE_5__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct snd_ac97 {unsigned char indep_surround; TYPE_3__* build_ops; } ;
struct TYPE_6__ {int (* update_jacks ) (struct snd_ac97*) ;} ;


 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct snd_ac97*) ;

__attribute__((used)) static int ac97_surround_jack_mode_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 unsigned char indep = !!ucontrol->value.enumerated.item[0];

 if (indep != ac97->indep_surround) {
  ac97->indep_surround = indep;
  if (ac97->build_ops->update_jacks)
   ac97->build_ops->update_jacks(ac97);
  return 1;
 }
 return 0;
}
