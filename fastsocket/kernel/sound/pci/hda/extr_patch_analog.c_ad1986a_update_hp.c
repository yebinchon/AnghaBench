
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {scalar_t__ jack_present; } ;


 unsigned int HDA_AMP_MUTE ;
 int HDA_OUTPUT ;
 unsigned int snd_hda_codec_amp_read (struct hda_codec*,int,int ,int ,int ) ;
 int snd_hda_codec_amp_stereo (struct hda_codec*,int,int ,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void ad1986a_update_hp(struct hda_codec *codec)
{
 struct ad198x_spec *spec = codec->spec;
 unsigned int mute;

 if (spec->jack_present)
  mute = HDA_AMP_MUTE;
 else

  mute = snd_hda_codec_amp_read(codec, 0x1a, 0, HDA_OUTPUT, 0);
 snd_hda_codec_amp_stereo(codec, 0x1b, HDA_OUTPUT, 0,
     HDA_AMP_MUTE, mute);
}
