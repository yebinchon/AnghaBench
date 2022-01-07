
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auto_pin_cfg {int num_inputs; TYPE_1__* inputs; } ;
struct hda_gen_spec {int loopback_merge_path; int * loopback_paths; scalar_t__ mixer_nid; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_2__ {int pin; } ;


 scalar_t__ is_input_pin (struct hda_codec*,int ) ;
 int restore_pin_ctl (struct hda_codec*,int ) ;
 int resume_path_from_idx (struct hda_codec*,int ) ;

__attribute__((used)) static void init_analog_input(struct hda_codec *codec)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 int i;

 for (i = 0; i < cfg->num_inputs; i++) {
  hda_nid_t nid = cfg->inputs[i].pin;
  if (is_input_pin(codec, nid))
   restore_pin_ctl(codec, nid);


  if (spec->mixer_nid) {
   resume_path_from_idx(codec, spec->loopback_paths[i]);
   resume_path_from_idx(codec, spec->loopback_merge_path);
  }
 }
}
