
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_ymfpci {TYPE_4__* pcm_mixer; } ;
struct TYPE_5__ {unsigned int subdevice; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_6__ {int * value; } ;
struct TYPE_7__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_8__ {int right; int left; } ;


 struct snd_ymfpci* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ymfpci_pcm_vol_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ymfpci *chip = snd_kcontrol_chip(kcontrol);
 unsigned int subs = kcontrol->id.subdevice;

 ucontrol->value.integer.value[0] = chip->pcm_mixer[subs].left;
 ucontrol->value.integer.value[1] = chip->pcm_mixer[subs].right;
 return 0;
}
