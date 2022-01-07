
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mixer_nid; } ;
struct via_spec {scalar_t__ codec_type; int set_widgets_power_state; int num_iverbs; int * init_verbs; TYPE_1__ gen; } ;
struct hda_codec {int patch_ops; } ;


 int ENOMEM ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 scalar_t__ VT1802 ;
 int add_secret_dac_path (struct hda_codec*) ;
 int fix_vt1802_connections (struct hda_codec*) ;
 int override_mic_boost (struct hda_codec*,int,int ,int,int) ;
 int set_widgets_power_state_vt2002P ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int *,int ,int ) ;
 int via_fixups ;
 int via_free (struct hda_codec*) ;
 struct via_spec* via_new_spec (struct hda_codec*) ;
 int via_parse_auto_config (struct hda_codec*) ;
 int via_patch_ops ;
 int vt1802_init_verbs ;
 int vt2002P_init_verbs ;
 int vt2002p_fixups ;

__attribute__((used)) static int patch_vt2002P(struct hda_codec *codec)
{
 struct via_spec *spec;
 int err;


 spec = via_new_spec(codec);
 if (spec == ((void*)0))
  return -ENOMEM;

 spec->gen.mixer_nid = 0x21;
 override_mic_boost(codec, 0x2b, 0, 3, 40);
 override_mic_boost(codec, 0x29, 0, 3, 40);
 if (spec->codec_type == VT1802)
  fix_vt1802_connections(codec);
 add_secret_dac_path(codec);

 snd_hda_pick_fixup(codec, ((void*)0), vt2002p_fixups, via_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);


 err = via_parse_auto_config(codec);
 if (err < 0) {
  via_free(codec);
  return err;
 }

 if (spec->codec_type == VT1802)
  spec->init_verbs[spec->num_iverbs++] = vt1802_init_verbs;
 else
  spec->init_verbs[spec->num_iverbs++] = vt2002P_init_verbs;

 codec->patch_ops = via_patch_ops;

 spec->set_widgets_power_state = set_widgets_power_state_vt2002P;
 return 0;
}
