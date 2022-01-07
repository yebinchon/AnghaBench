
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mixer_nid; } ;
struct via_spec {int set_widgets_power_state; TYPE_1__ gen; } ;
struct hda_codec {int patch_ops; } ;


 int ENOMEM ;
 scalar_t__ VT1708BCE ;
 scalar_t__ get_codec_type (struct hda_codec*) ;
 int patch_vt1708S (struct hda_codec*) ;
 int set_widgets_power_state_vt1708B ;
 int via_free (struct hda_codec*) ;
 struct via_spec* via_new_spec (struct hda_codec*) ;
 int via_parse_auto_config (struct hda_codec*) ;
 int via_patch_ops ;

__attribute__((used)) static int patch_vt1708B(struct hda_codec *codec)
{
 struct via_spec *spec;
 int err;

 if (get_codec_type(codec) == VT1708BCE)
  return patch_vt1708S(codec);


 spec = via_new_spec(codec);
 if (spec == ((void*)0))
  return -ENOMEM;

 spec->gen.mixer_nid = 0x16;


 err = via_parse_auto_config(codec);
 if (err < 0) {
  via_free(codec);
  return err;
 }

 codec->patch_ops = via_patch_ops;

 spec->set_widgets_power_state = set_widgets_power_state_vt1708B;

 return 0;
}
