
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int AC_VERB_SET_EAPD_BTLENABLE ;
 int HDA_AMP_MUTE ;
 int HDA_OUTPUT ;
 int snd_hda_codec_amp_stereo (struct hda_codec*,int,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int) ;
 unsigned int snd_hda_jack_detect (struct hda_codec*,int) ;

__attribute__((used)) static void ad1884a_hp_automute(struct hda_codec *codec)
{
 unsigned int present;

 present = snd_hda_jack_detect(codec, 0x11);
 snd_hda_codec_amp_stereo(codec, 0x16, HDA_OUTPUT, 0,
     HDA_AMP_MUTE, present ? HDA_AMP_MUTE : 0);
 snd_hda_codec_write(codec, 0x16, 0, AC_VERB_SET_EAPD_BTLENABLE,
       present ? 0x00 : 0x02);
}
