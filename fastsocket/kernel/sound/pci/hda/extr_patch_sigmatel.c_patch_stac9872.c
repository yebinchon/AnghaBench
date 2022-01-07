
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int own_eapd_ctl; } ;
struct sigmatel_spec {int linear_tone_beep; TYPE_1__ gen; } ;
struct hda_codec {int patch_ops; struct sigmatel_spec* spec; } ;


 int EINVAL ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int alloc_stac_spec (struct hda_codec*) ;
 int snd_hda_add_verbs (struct hda_codec*,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;
 int stac9872_core_init ;
 int stac9872_fixup_tbl ;
 int stac9872_fixups ;
 int stac9872_models ;
 int stac_free (struct hda_codec*) ;
 int stac_parse_auto_config (struct hda_codec*) ;
 int stac_patch_ops ;

__attribute__((used)) static int patch_stac9872(struct hda_codec *codec)
{
 struct sigmatel_spec *spec;
 int err;

 err = alloc_stac_spec(codec);
 if (err < 0)
  return err;

 spec = codec->spec;
 spec->linear_tone_beep = 1;
 spec->gen.own_eapd_ctl = 1;

 codec->patch_ops = stac_patch_ops;

 snd_hda_add_verbs(codec, stac9872_core_init);

 snd_hda_pick_fixup(codec, stac9872_models, stac9872_fixup_tbl,
      stac9872_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 err = stac_parse_auto_config(codec);
 if (err < 0) {
  stac_free(codec);
  return -EINVAL;
 }

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;
}
