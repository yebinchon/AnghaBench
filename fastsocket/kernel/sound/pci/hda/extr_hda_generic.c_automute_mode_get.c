
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
struct hda_gen_spec {scalar_t__ automute_lo; scalar_t__ automute_speaker; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int automute_mode_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hda_gen_spec *spec = codec->spec;
 unsigned int val = 0;
 if (spec->automute_speaker)
  val++;
 if (spec->automute_lo)
  val++;

 ucontrol->value.enumerated.item[0] = val;
 return 0;
}
