
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct via_spec {scalar_t__ codec_type; int vt1708_jack_detect; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {struct via_spec* spec; } ;


 scalar_t__ VT1708 ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int vt1708_jack_detect_get(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct via_spec *spec = codec->spec;

 if (spec->codec_type != VT1708)
  return 0;
 ucontrol->value.integer.value[0] = spec->vt1708_jack_detect;
 return 0;
}
