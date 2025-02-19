
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_codec {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int WM9081_ANALOGUE_SPEAKER_2 ;
 unsigned int WM9081_SPK_MODE ;
 struct snd_soc_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned int snd_soc_read (struct snd_soc_codec*,int ) ;

__attribute__((used)) static int speaker_mode_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_codec *codec = snd_kcontrol_chip(kcontrol);
 unsigned int reg;

 reg = snd_soc_read(codec, WM9081_ANALOGUE_SPEAKER_2);
 if (reg & WM9081_SPK_MODE)
  ucontrol->value.integer.value[0] = 1;
 else
  ucontrol->value.integer.value[0] = 0;

 return 0;
}
