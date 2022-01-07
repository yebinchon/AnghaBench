
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int (* put ) (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;
struct TYPE_3__ {unsigned int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hda_jack_tbl {int nid; } ;
struct hda_codec {int dummy; } ;


 int AC_VERB_GET_VOLUME_KNOB_CONTROL ;
 int GFP_KERNEL ;
 unsigned int HDA_AMP_VOLMASK ;
 int kfree (struct snd_ctl_elem_value*) ;
 struct snd_ctl_elem_value* kzalloc (int,int ) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 struct snd_kcontrol* snd_hda_find_mixer_ctl (struct hda_codec*,char*) ;
 int stub1 (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static void alc_update_knob_master(struct hda_codec *codec, struct hda_jack_tbl *jack)
{
 unsigned int val;
 struct snd_kcontrol *kctl;
 struct snd_ctl_elem_value *uctl;

 kctl = snd_hda_find_mixer_ctl(codec, "Master Playback Volume");
 if (!kctl)
  return;
 uctl = kzalloc(sizeof(*uctl), GFP_KERNEL);
 if (!uctl)
  return;
 val = snd_hda_codec_read(codec, jack->nid, 0,
     AC_VERB_GET_VOLUME_KNOB_CONTROL, 0);
 val &= HDA_AMP_VOLMASK;
 uctl->value.integer.value[0] = val;
 uctl->value.integer.value[1] = val;
 kctl->put(kctl, uctl);
 kfree(uctl);
}
