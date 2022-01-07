
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hda_codec {int patch_ops; struct alc_spec* spec; } ;
struct TYPE_3__ {int* speaker_pins; } ;
struct TYPE_4__ {int beep_nid; TYPE_1__ autocfg; int no_analog; } ;
struct alc_spec {int shutup; TYPE_2__ gen; } ;


 int AC_AMPCAP_MUTE_SHIFT ;
 int AC_AMPCAP_NUM_STEPS_SHIFT ;
 int AC_AMPCAP_OFFSET_SHIFT ;
 int AC_AMPCAP_STEP_SIZE_SHIFT ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int HDA_INPUT ;
 int add_mixer (struct alc_spec*,int ) ;
 int alc268_beep_init_verbs ;
 int alc268_beep_mixer ;
 int alc268_fixup_models ;
 int alc268_fixup_tbl ;
 int alc268_fixups ;
 int alc268_parse_auto_config (struct hda_codec*) ;
 int alc_alloc_spec (struct hda_codec*,int ) ;
 int alc_eapd_shutup ;
 int alc_free (struct hda_codec*) ;
 int alc_patch_ops ;
 int query_amp_caps (struct hda_codec*,int,int ) ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_override_amp_caps (struct hda_codec*,int,int ,int) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static int patch_alc268(struct hda_codec *codec)
{
 struct alc_spec *spec;
 int err;


 err = alc_alloc_spec(codec, 0);
 if (err < 0)
  return err;

 spec = codec->spec;
 spec->gen.beep_nid = 0x01;

 snd_hda_pick_fixup(codec, alc268_fixup_models, alc268_fixup_tbl, alc268_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);


 err = alc268_parse_auto_config(codec);
 if (err < 0)
  goto error;

 if (err > 0 && !spec->gen.no_analog &&
     spec->gen.autocfg.speaker_pins[0] != 0x1d) {
  add_mixer(spec, alc268_beep_mixer);
  snd_hda_add_verbs(codec, alc268_beep_init_verbs);
  if (!query_amp_caps(codec, 0x1d, HDA_INPUT))

   snd_hda_override_amp_caps(codec, 0x1d, HDA_INPUT,
       (0x0c << AC_AMPCAP_OFFSET_SHIFT) |
       (0x0c << AC_AMPCAP_NUM_STEPS_SHIFT) |
       (0x07 << AC_AMPCAP_STEP_SIZE_SHIFT) |
       (0 << AC_AMPCAP_MUTE_SHIFT));
 }

 codec->patch_ops = alc_patch_ops;
 spec->shutup = alc_eapd_shutup;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;

 error:
 alc_free(codec);
 return err;
}
