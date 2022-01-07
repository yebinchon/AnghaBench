
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_PWRST_D0 ;
 unsigned int AC_PWRST_D3 ;
 int AC_VERB_SET_POWER_STATE ;
 int msleep (int) ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,unsigned int) ;
 int snd_hda_codec_set_power_to_all (struct hda_codec*,int ,unsigned int) ;

__attribute__((used)) static void conexant_set_power(struct hda_codec *codec, hda_nid_t fg,
          unsigned int power_state)
{
 if (power_state == AC_PWRST_D3)
  msleep(100);
 snd_hda_codec_read(codec, fg, 0, AC_VERB_SET_POWER_STATE,
       power_state);

 if (power_state == AC_PWRST_D0)
  msleep(10);
 snd_hda_codec_set_power_to_all(codec, fg, power_state);
}
