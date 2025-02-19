
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_vmaster_mute_hook {unsigned int mute_mode; } ;


 unsigned int HDA_VMUTE_FOLLOW_MASTER ;
 int snd_hda_sync_vmaster_hook (struct hda_vmaster_mute_hook*) ;
 struct hda_vmaster_mute_hook* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int vmaster_mute_mode_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hda_vmaster_mute_hook *hook = snd_kcontrol_chip(kcontrol);
 unsigned int old_mode = hook->mute_mode;

 hook->mute_mode = ucontrol->value.enumerated.item[0];
 if (hook->mute_mode > HDA_VMUTE_FOLLOW_MASTER)
  hook->mute_mode = HDA_VMUTE_FOLLOW_MASTER;
 if (old_mode == hook->mute_mode)
  return 0;
 snd_hda_sync_vmaster_hook(hook);
 return 1;
}
