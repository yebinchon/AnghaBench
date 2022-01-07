
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int snd_hda_codec_set_pincfg (struct hda_codec*,int,int) ;
 int stac92hd73xx_fixup_dell (struct hda_codec*) ;

__attribute__((used)) static void stac92hd73xx_fixup_dell_m6_both(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 if (action != HDA_FIXUP_ACT_PRE_PROBE)
  return;

 stac92hd73xx_fixup_dell(codec);
 snd_hda_codec_set_pincfg(codec, 0x0b, 0x90A70170);
 snd_hda_codec_set_pincfg(codec, 0x13, 0x90A60160);
}
