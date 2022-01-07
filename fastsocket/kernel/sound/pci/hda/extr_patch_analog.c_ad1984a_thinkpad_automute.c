
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int HDA_AMP_MUTE ;
 int HDA_OUTPUT ;
 int snd_hda_codec_amp_stereo (struct hda_codec*,int,int ,int ,int ,int ) ;
 unsigned int snd_hda_jack_detect (struct hda_codec*,int) ;

__attribute__((used)) static void ad1984a_thinkpad_automute(struct hda_codec *codec)
{
 unsigned int present;

 present = snd_hda_jack_detect(codec, 0x11);
 snd_hda_codec_amp_stereo(codec, 0x12, HDA_OUTPUT, 0,
     HDA_AMP_MUTE, present ? HDA_AMP_MUTE : 0);
}
