
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {unsigned int* item; } ;
struct TYPE_6__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_8__ {scalar_t__ line_out_type; } ;
struct TYPE_7__ {scalar_t__* hp_out_nid; } ;
struct hda_gen_spec {unsigned int indep_hp_enabled; int pcm_mutex; scalar_t__ alt_dac_nid; int * aamix_out_paths; int * hp_paths; int aamix_mode; TYPE_4__ autocfg; int * out_paths; scalar_t__ have_aamix_ctl; TYPE_3__ multiout; scalar_t__* private_dac_nids; scalar_t__ active_streams; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef scalar_t__ hda_nid_t ;


 scalar_t__ AUTO_PIN_HP_OUT ;
 int EBUSY ;
 int call_hp_automute (struct hda_codec*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int update_aamix_paths (struct hda_codec*,int ,int ,int ,scalar_t__) ;

__attribute__((used)) static int indep_hp_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 struct hda_gen_spec *spec = codec->spec;
 unsigned int select = ucontrol->value.enumerated.item[0];
 int ret = 0;

 mutex_lock(&spec->pcm_mutex);
 if (spec->active_streams) {
  ret = -EBUSY;
  goto unlock;
 }

 if (spec->indep_hp_enabled != select) {
  hda_nid_t *dacp;
  if (spec->autocfg.line_out_type == AUTO_PIN_HP_OUT)
   dacp = &spec->private_dac_nids[0];
  else
   dacp = &spec->multiout.hp_out_nid[0];


  if (spec->have_aamix_ctl) {
   if (spec->autocfg.line_out_type == AUTO_PIN_HP_OUT)
    update_aamix_paths(codec, spec->aamix_mode,
         spec->out_paths[0],
         spec->aamix_out_paths[0],
         spec->autocfg.line_out_type);
   else
    update_aamix_paths(codec, spec->aamix_mode,
         spec->hp_paths[0],
         spec->aamix_out_paths[1],
         AUTO_PIN_HP_OUT);
  }

  spec->indep_hp_enabled = select;
  if (spec->indep_hp_enabled)
   *dacp = 0;
  else
   *dacp = spec->alt_dac_nid;

  call_hp_automute(codec, ((void*)0));
  ret = 1;
 }
 unlock:
 mutex_unlock(&spec->pcm_mutex);
 return ret;
}
