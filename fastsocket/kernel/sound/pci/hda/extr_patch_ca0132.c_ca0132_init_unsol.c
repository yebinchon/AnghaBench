
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int UNSOL_TAG_AMIC1 ;
 int UNSOL_TAG_HP ;
 int snd_hda_jack_detect_enable (struct hda_codec*,int ,int ) ;

__attribute__((used)) static void ca0132_init_unsol(struct hda_codec *codec)
{
 snd_hda_jack_detect_enable(codec, UNSOL_TAG_HP, UNSOL_TAG_HP);
 snd_hda_jack_detect_enable(codec, UNSOL_TAG_AMIC1, UNSOL_TAG_AMIC1);
}
