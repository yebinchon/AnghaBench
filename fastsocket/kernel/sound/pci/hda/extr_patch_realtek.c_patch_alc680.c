
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int patch_ops; } ;


 int alc680_parse_auto_config (struct hda_codec*) ;
 int alc_alloc_spec (struct hda_codec*,int ) ;
 int alc_free (struct hda_codec*) ;
 int alc_patch_ops ;

__attribute__((used)) static int patch_alc680(struct hda_codec *codec)
{
 int err;


 err = alc_alloc_spec(codec, 0);
 if (err < 0)
  return err;


 err = alc680_parse_auto_config(codec);
 if (err < 0) {
  alc_free(codec);
  return err;
 }

 codec->patch_ops = alc_patch_ops;

 return 0;
}
