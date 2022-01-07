
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int vendor_id; } ;


 int alc_write_coef_idx (struct hda_codec*,int,int) ;
 int snd_printdd (char*) ;

__attribute__((used)) static void alc_headset_mode_omtp(struct hda_codec *codec)
{
 switch (codec->vendor_id) {
 case 0x10ec0283:
  alc_write_coef_idx(codec, 0x45, 0xe429);
  alc_write_coef_idx(codec, 0x1b, 0x0c2b);
  alc_write_coef_idx(codec, 0x32, 0x4ea3);
  break;
 case 0x10ec0292:
  alc_write_coef_idx(codec, 0x6b, 0xe429);
  alc_write_coef_idx(codec, 0x76, 0x0008);
  alc_write_coef_idx(codec, 0x18, 0x7388);
  break;
 case 0x10ec0668:
  alc_write_coef_idx(codec, 0x15, 0x0d50);
  alc_write_coef_idx(codec, 0xc3, 0x0000);
  break;
 }
 snd_printdd("Headset jack set to Nokia-style headset mode.\n");
}
