
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {struct cs4270_private* private_data; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct cs4270_private {int manual_mute; } ;


 int CS4270_MUTE_DAC_A ;
 int CS4270_MUTE_DAC_B ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int cs4270_soc_put_mute(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 struct cs4270_private *cs4270 = codec->private_data;
 int left = !ucontrol->value.integer.value[0];
 int right = !ucontrol->value.integer.value[1];

 cs4270->manual_mute = (left ? CS4270_MUTE_DAC_A : 0) |
         (right ? CS4270_MUTE_DAC_B : 0);

 return snd_soc_put_volsw(kcontrol, ucontrol);
}
