
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int item; int name; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_info {TYPE_2__ value; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int get_vref_caps (struct hda_codec*,int ) ;
 size_t get_vref_idx (unsigned int,int ) ;
 int hweight32 (unsigned int) ;
 int snd_hda_enum_helper_info (struct snd_kcontrol*,struct snd_ctl_elem_info*,int ,int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int strcpy (int ,int ) ;
 int * vref_texts ;

__attribute__((used)) static int in_jack_mode_info(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_info *uinfo)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 hda_nid_t nid = kcontrol->private_value;
 unsigned int vref_caps = get_vref_caps(codec, nid);

 snd_hda_enum_helper_info(kcontrol, uinfo, hweight32(vref_caps),
     vref_texts);

 strcpy(uinfo->value.enumerated.name,
        vref_texts[get_vref_idx(vref_caps, uinfo->value.enumerated.item)]);
 return 0;
}
