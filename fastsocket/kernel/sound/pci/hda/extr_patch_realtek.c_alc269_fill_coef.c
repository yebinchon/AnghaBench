
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {scalar_t__ codec_variant; } ;


 scalar_t__ ALC269_TYPE_ALC269VB ;
 int alc_get_coef0 (struct hda_codec*) ;
 int alc_read_coef_idx (struct hda_codec*,int) ;
 int alc_write_coef_idx (struct hda_codec*,int,int) ;

__attribute__((used)) static void alc269_fill_coef(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;
 int val;

 if (spec->codec_variant != ALC269_TYPE_ALC269VB)
  return;

 if ((alc_get_coef0(codec) & 0x00ff) < 0x015) {
  alc_write_coef_idx(codec, 0xf, 0x960b);
  alc_write_coef_idx(codec, 0xe, 0x8817);
 }

 if ((alc_get_coef0(codec) & 0x00ff) == 0x016) {
  alc_write_coef_idx(codec, 0xf, 0x960b);
  alc_write_coef_idx(codec, 0xe, 0x8814);
 }

 if ((alc_get_coef0(codec) & 0x00ff) == 0x017) {
  val = alc_read_coef_idx(codec, 0x04);

  alc_write_coef_idx(codec, 0x04, val | (1<<11));
 }

 if ((alc_get_coef0(codec) & 0x00ff) == 0x018) {
  val = alc_read_coef_idx(codec, 0xd);
  if ((val & 0x0c00) >> 10 != 0x1) {

   alc_write_coef_idx(codec, 0xd, val | (1<<10));
  }
  val = alc_read_coef_idx(codec, 0x17);
  if ((val & 0x01c0) >> 6 != 0x4) {

   alc_write_coef_idx(codec, 0x17, val | (1<<7));
  }
 }

 val = alc_read_coef_idx(codec, 0xd);
 alc_write_coef_idx(codec, 0xd, val | (1<<14));

 val = alc_read_coef_idx(codec, 0x4);
 alc_write_coef_idx(codec, 0x4, val | (1<<11));
}
