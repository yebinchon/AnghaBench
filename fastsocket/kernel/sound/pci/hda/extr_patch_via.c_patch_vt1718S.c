
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mixer_nid; } ;
struct via_spec {int set_widgets_power_state; int num_iverbs; int * init_verbs; TYPE_1__ gen; } ;
struct hda_codec {int patch_ops; } ;


 int ENOMEM ;
 int add_secret_dac_path (struct hda_codec*) ;
 int override_mic_boost (struct hda_codec*,int,int ,int,int) ;
 int set_widgets_power_state_vt1718S ;
 int via_free (struct hda_codec*) ;
 struct via_spec* via_new_spec (struct hda_codec*) ;
 int via_parse_auto_config (struct hda_codec*) ;
 int via_patch_ops ;
 int vt1718S_init_verbs ;

__attribute__((used)) static int patch_vt1718S(struct hda_codec *codec)
{
 struct via_spec *spec;
 int err;


 spec = via_new_spec(codec);
 if (spec == ((void*)0))
  return -ENOMEM;

 spec->gen.mixer_nid = 0x21;
 override_mic_boost(codec, 0x2b, 0, 3, 40);
 override_mic_boost(codec, 0x29, 0, 3, 40);
 add_secret_dac_path(codec);


 err = via_parse_auto_config(codec);
 if (err < 0) {
  via_free(codec);
  return err;
 }

 spec->init_verbs[spec->num_iverbs++] = vt1718S_init_verbs;

 codec->patch_ops = via_patch_ops;

 spec->set_widgets_power_state = set_widgets_power_state_vt1718S;

 return 0;
}
