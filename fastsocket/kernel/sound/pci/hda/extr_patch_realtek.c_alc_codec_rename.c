
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int chip_name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int alc_free (struct hda_codec*) ;
 int kfree (int ) ;
 int kstrdup (char const*,int ) ;

__attribute__((used)) static int alc_codec_rename(struct hda_codec *codec, const char *name)
{
 kfree(codec->chip_name);
 codec->chip_name = kstrdup(name, GFP_KERNEL);
 if (!codec->chip_name) {
  alc_free(codec);
  return -ENOMEM;
 }
 return 0;
}
