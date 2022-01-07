
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {unsigned int private_value; struct snd_soc_codec* private_data; } ;
struct TYPE_3__ {scalar_t__* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int snd_soc_dapm_disable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_enable_pin (struct snd_soc_codec*,char*) ;
 int snd_soc_dapm_sync (struct snd_soc_codec*) ;

__attribute__((used)) static int output_type_put(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = kcontrol->private_data;
 unsigned int val = (ucontrol->value.enumerated.item[0] != 0);
 char *differential = "Audio Out Differential";
 char *stereo = "Audio Out Stereo";

 if (kcontrol->private_value == val)
  return 0;
 kcontrol->private_value = val;
 snd_soc_dapm_disable_pin(codec, val ? differential : stereo);
 snd_soc_dapm_sync(codec);
 snd_soc_dapm_enable_pin(codec, val ? stereo : differential);
 snd_soc_dapm_sync(codec);

 return 1;
}
