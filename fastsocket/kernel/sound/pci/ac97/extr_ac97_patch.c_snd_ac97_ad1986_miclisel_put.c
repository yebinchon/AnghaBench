
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_7__ {scalar_t__* value; } ;
struct TYPE_8__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_9__ {unsigned char swap_mic_linein; } ;
struct TYPE_10__ {TYPE_4__ ad18xx; } ;
struct snd_ac97 {TYPE_1__* build_ops; TYPE_5__ spec; } ;
struct TYPE_6__ {int (* update_jacks ) (struct snd_ac97*) ;} ;


 struct snd_ac97* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct snd_ac97*) ;

__attribute__((used)) static int snd_ac97_ad1986_miclisel_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ac97 *ac97 = snd_kcontrol_chip(kcontrol);
 unsigned char swap = ucontrol->value.integer.value[0] != 0;

 if (swap != ac97->spec.ad18xx.swap_mic_linein) {
  ac97->spec.ad18xx.swap_mic_linein = swap;
  if (ac97->build_ops->update_jacks)
   ac97->build_ops->update_jacks(ac97);
  return 1;
 }
 return 0;
}
