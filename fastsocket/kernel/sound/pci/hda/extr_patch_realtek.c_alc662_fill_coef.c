
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int vendor_id; } ;


 int alc_get_coef0 (struct hda_codec*) ;
 int alc_read_coef_idx (struct hda_codec*,int) ;
 int alc_write_coef_idx (struct hda_codec*,int,int) ;

__attribute__((used)) static void alc662_fill_coef(struct hda_codec *codec)
{
 int val, coef;

 coef = alc_get_coef0(codec);

 switch (codec->vendor_id) {
 case 0x10ec0662:
  if ((coef & 0x00f0) == 0x0030) {
   val = alc_read_coef_idx(codec, 0x4);
   alc_write_coef_idx(codec, 0x4, val & ~(1<<10));
  }
  break;
 case 0x10ec0272:
 case 0x10ec0273:
 case 0x10ec0663:
 case 0x10ec0665:
 case 0x10ec0670:
 case 0x10ec0671:
 case 0x10ec0672:
  val = alc_read_coef_idx(codec, 0xd);
  alc_write_coef_idx(codec, 0xd, val | (1<<14));
  break;
 }
}
