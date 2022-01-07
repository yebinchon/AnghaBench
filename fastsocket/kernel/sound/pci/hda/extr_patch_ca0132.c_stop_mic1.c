
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {int * adcs; } ;


 int AC_VERB_GET_CONV ;
 int AC_VERB_SET_CHANNEL_STREAMID ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static int stop_mic1(struct hda_codec *codec)
{
 struct ca0132_spec *spec = codec->spec;
 unsigned int oldval = snd_hda_codec_read(codec, spec->adcs[0], 0,
       AC_VERB_GET_CONV, 0);
 if (oldval != 0)
  snd_hda_codec_write(codec, spec->adcs[0], 0,
        AC_VERB_SET_CHANNEL_STREAMID,
        0);
 return oldval;
}
