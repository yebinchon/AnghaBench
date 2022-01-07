
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int cur_eapd; scalar_t__ hp_present; } ;


 unsigned int HDA_AMP_MUTE ;
 int HDA_OUTPUT ;
 int snd_hda_codec_amp_stereo (struct hda_codec*,int,int ,int ,unsigned int,unsigned int) ;
 scalar_t__ snd_hda_jack_detect (struct hda_codec*,int) ;

__attribute__((used)) static void cxt5045_hp_automute(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 unsigned int bits;

 spec->hp_present = snd_hda_jack_detect(codec, 0x11);

 bits = (spec->hp_present || !spec->cur_eapd) ? HDA_AMP_MUTE : 0;
 snd_hda_codec_amp_stereo(codec, 0x10, HDA_OUTPUT, 0,
     HDA_AMP_MUTE, bits);
}
