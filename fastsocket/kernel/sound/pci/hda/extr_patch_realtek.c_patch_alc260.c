
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int patch_ops; struct alc_spec* spec; } ;
struct TYPE_2__ {int prefer_hp_amp; int beep_nid; int no_analog; } ;
struct alc_spec {int shutup; TYPE_1__ gen; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int HDA_INPUT ;
 int alc260_fixup_models ;
 int alc260_fixup_tbl ;
 int alc260_fixups ;
 int alc260_parse_auto_config (struct hda_codec*) ;
 int alc_alloc_spec (struct hda_codec*,int) ;
 int alc_eapd_shutup ;
 int alc_free (struct hda_codec*) ;
 int alc_patch_ops ;
 int set_beep_amp (struct alc_spec*,int,int,int ) ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static int patch_alc260(struct hda_codec *codec)
{
 struct alc_spec *spec;
 int err;

 err = alc_alloc_spec(codec, 0x07);
 if (err < 0)
  return err;

 spec = codec->spec;




 spec->gen.prefer_hp_amp = 1;
 spec->gen.beep_nid = 0x01;

 snd_hda_pick_fixup(codec, alc260_fixup_models, alc260_fixup_tbl,
      alc260_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);


 err = alc260_parse_auto_config(codec);
 if (err < 0)
  goto error;

 if (!spec->gen.no_analog)
  set_beep_amp(spec, 0x07, 0x05, HDA_INPUT);

 codec->patch_ops = alc_patch_ops;
 spec->shutup = alc_eapd_shutup;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;

 error:
 alc_free(codec);
 return err;
}
