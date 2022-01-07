
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PINCTL_VREFEN ;
 unsigned int PIN_HP ;
 unsigned int PIN_IN ;
 unsigned int PIN_OUT ;
 int call_hp_automute (struct hda_codec*,int *) ;
 unsigned int get_cur_hp_mic_jack_mode (struct hda_codec*,int ) ;
 int get_in_jack_num_items (struct hda_codec*,int ) ;
 int get_out_jack_num_items (struct hda_codec*,int ) ;
 unsigned int get_vref_caps (struct hda_codec*,int ) ;
 unsigned int get_vref_idx (unsigned int,unsigned int) ;
 unsigned int snd_hda_codec_get_pin_target (struct hda_codec*,int ) ;
 unsigned int snd_hda_get_default_vref (struct hda_codec*,int ) ;
 int snd_hda_set_pin_ctl_cache (struct hda_codec*,int ,unsigned int) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int hp_mic_jack_mode_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 hda_nid_t nid = kcontrol->private_value;
 int out_jacks = get_out_jack_num_items(codec, nid);
 int in_jacks = get_in_jack_num_items(codec, nid);
 unsigned int val, oldval, idx;

 oldval = get_cur_hp_mic_jack_mode(codec, nid);
 idx = ucontrol->value.enumerated.item[0];
 if (oldval == idx)
  return 0;

 if (idx < out_jacks) {
  if (out_jacks > 1)
   val = idx ? PIN_HP : PIN_OUT;
  else
   val = PIN_HP;
 } else {
  idx -= out_jacks;
  if (in_jacks > 1) {
   unsigned int vref_caps = get_vref_caps(codec, nid);
   val = snd_hda_codec_get_pin_target(codec, nid);
   val &= ~(AC_PINCTL_VREFEN | PIN_HP);
   val |= get_vref_idx(vref_caps, idx) | PIN_IN;
  } else
   val = snd_hda_get_default_vref(codec, nid);
 }
 snd_hda_set_pin_ctl_cache(codec, nid, val);
 call_hp_automute(codec, ((void*)0));

 return 1;
}
