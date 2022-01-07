
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {scalar_t__ codec_variant; } ;


 scalar_t__ ALC269_TYPE_ALC269VB ;
 int alc269vb_toggle_power_output (struct hda_codec*,int ) ;
 int alc_get_coef0 (struct hda_codec*) ;
 int msleep (int) ;

__attribute__((used)) static void alc269_shutup(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;

 if (spec->codec_variant != ALC269_TYPE_ALC269VB)
  return;

 if (spec->codec_variant == ALC269_TYPE_ALC269VB)
  alc269vb_toggle_power_output(codec, 0);
 if (spec->codec_variant == ALC269_TYPE_ALC269VB &&
   (alc_get_coef0(codec) & 0x00ff) == 0x018) {
  msleep(150);
 }
}
