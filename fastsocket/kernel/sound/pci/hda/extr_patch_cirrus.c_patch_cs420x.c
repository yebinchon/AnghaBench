
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {int patch_ops; } ;
struct TYPE_2__ {int automute_hook; } ;
struct cs_spec {TYPE_1__ gen; } ;


 int CS420X_VENDOR_NID ;
 int ENOMEM ;
 int HDA_FIXUP_ACT_PRE_PROBE ;
 int HDA_FIXUP_ACT_PROBE ;
 int cs420x_fixup_tbl ;
 int cs420x_fixups ;
 int cs420x_models ;
 struct cs_spec* cs_alloc_spec (struct hda_codec*,int ) ;
 int cs_automute ;
 int cs_free (struct hda_codec*) ;
 int cs_parse_auto_config (struct hda_codec*) ;
 int cs_patch_ops ;
 int snd_hda_apply_fixup (struct hda_codec*,int ) ;
 int snd_hda_pick_fixup (struct hda_codec*,int ,int ,int ) ;

__attribute__((used)) static int patch_cs420x(struct hda_codec *codec)
{
 struct cs_spec *spec;
 int err;

 spec = cs_alloc_spec(codec, CS420X_VENDOR_NID);
 if (!spec)
  return -ENOMEM;

 spec->gen.automute_hook = cs_automute;

 snd_hda_pick_fixup(codec, cs420x_models, cs420x_fixup_tbl,
      cs420x_fixups);
 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PRE_PROBE);

 err = cs_parse_auto_config(codec);
 if (err < 0)
  goto error;

 codec->patch_ops = cs_patch_ops;

 snd_hda_apply_fixup(codec, HDA_FIXUP_ACT_PROBE);

 return 0;

 error:
 cs_free(codec);
 return err;
}
