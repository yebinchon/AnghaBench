
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_line6_pcm {scalar_t__* volume; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 struct snd_line6_pcm* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_line6_control_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 int i, changed = 0;
 struct snd_line6_pcm *line6pcm = snd_kcontrol_chip(kcontrol);

 for (i = 2; i--;)
  if (line6pcm->volume[i] != ucontrol->value.integer.value[i]) {
   line6pcm->volume[i] = ucontrol->value.integer.value[i];
   changed = 1;
  }

 return changed;
}
