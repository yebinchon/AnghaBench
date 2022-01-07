
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int items; int item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {int count; TYPE_2__ value; int type; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int SNDRV_CTL_ELEM_TYPE_ENUMERATED ;
 int get_in_jack_num_items (struct hda_codec*,int ) ;
 int get_out_jack_num_items (struct hda_codec*,int ) ;
 unsigned int get_vref_caps (struct hda_codec*,int ) ;
 size_t get_vref_idx (unsigned int,int) ;
 char** out_jack_texts ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strcpy (int ,char const*) ;
 char** vref_texts ;

__attribute__((used)) static int hp_mic_jack_mode_info(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 hda_nid_t nid = kcontrol->private_value;
 int out_jacks = get_out_jack_num_items(codec, nid);
 int in_jacks = get_in_jack_num_items(codec, nid);
 const char *text = ((void*)0);
 int idx;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 uinfo->count = 1;
 uinfo->value.enumerated.items = out_jacks + in_jacks;
 if (uinfo->value.enumerated.item >= uinfo->value.enumerated.items)
  uinfo->value.enumerated.item = uinfo->value.enumerated.items - 1;
 idx = uinfo->value.enumerated.item;
 if (idx < out_jacks) {
  if (out_jacks > 1)
   text = out_jack_texts[idx];
  else
   text = "Headphone Out";
 } else {
  idx -= out_jacks;
  if (in_jacks > 1) {
   unsigned int vref_caps = get_vref_caps(codec, nid);
   text = vref_texts[get_vref_idx(vref_caps, idx)];
  } else
   text = "Mic In";
 }

 strcpy(uinfo->value.enumerated.name, text);
 return 0;
}
