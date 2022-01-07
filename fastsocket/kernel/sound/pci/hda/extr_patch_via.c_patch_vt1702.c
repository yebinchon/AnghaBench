
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mixer_nid; } ;
struct via_spec {int set_widgets_power_state; int num_iverbs; int * init_verbs; TYPE_1__ gen; } ;
struct hda_codec {int patch_ops; } ;


 int AC_AMPCAP_MUTE_SHIFT ;
 int AC_AMPCAP_NUM_STEPS_SHIFT ;
 int AC_AMPCAP_OFFSET_SHIFT ;
 int AC_AMPCAP_STEP_SIZE_SHIFT ;
 int ENOMEM ;
 int HDA_INPUT ;
 int set_widgets_power_state_vt1702 ;
 int snd_hda_override_amp_caps (struct hda_codec*,int,int ,int) ;
 int via_free (struct hda_codec*) ;
 struct via_spec* via_new_spec (struct hda_codec*) ;
 int via_parse_auto_config (struct hda_codec*) ;
 int via_patch_ops ;
 int vt1702_init_verbs ;

__attribute__((used)) static int patch_vt1702(struct hda_codec *codec)
{
 struct via_spec *spec;
 int err;


 spec = via_new_spec(codec);
 if (spec == ((void*)0))
  return -ENOMEM;

 spec->gen.mixer_nid = 0x1a;


 snd_hda_override_amp_caps(codec, 0x1A, HDA_INPUT,
      (0x17 << AC_AMPCAP_OFFSET_SHIFT) |
      (0x17 << AC_AMPCAP_NUM_STEPS_SHIFT) |
      (0x5 << AC_AMPCAP_STEP_SIZE_SHIFT) |
      (1 << AC_AMPCAP_MUTE_SHIFT));


 err = via_parse_auto_config(codec);
 if (err < 0) {
  via_free(codec);
  return err;
 }

 spec->init_verbs[spec->num_iverbs++] = vt1702_init_verbs;

 codec->patch_ops = via_patch_ops;

 spec->set_widgets_power_state = set_widgets_power_state_vt1702;
 return 0;
}
