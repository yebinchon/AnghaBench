
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int (* default_get ) (struct snd_ice1712*,struct snd_ctl_elem_value*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct snd_ice1712 {TYPE_2__ spdif; } ;
struct snd_ctl_elem_value {int dummy; } ;


 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct snd_ice1712*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int snd_ice1712_spdif_default_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 if (ice->spdif.ops.default_get)
  ice->spdif.ops.default_get(ice, ucontrol);
 return 0;
}
