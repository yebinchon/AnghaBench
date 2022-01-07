
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_spec {unsigned int* dac_stream_tag; } ;
struct hda_codec {struct via_spec* spec; } ;
typedef int hda_nid_t ;


 unsigned int AC_PWRST_D0 ;
 int AC_VERB_GET_CONV ;
 int AC_VERB_SET_CHANNEL_STREAMID ;
 int AC_VERB_SET_POWER_STATE ;
 scalar_t__ snd_hda_check_power_state (struct hda_codec*,int ,unsigned int) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;

__attribute__((used)) static void update_conv_power_state(struct hda_codec *codec, hda_nid_t nid,
          unsigned int parm, unsigned int index)
{
 struct via_spec *spec = codec->spec;
 unsigned int format;

 if (snd_hda_check_power_state(codec, nid, parm))
  return;
 format = snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_CONV, 0);
 if (format && (spec->dac_stream_tag[index] != format))
  spec->dac_stream_tag[index] = format;

 snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_POWER_STATE, parm);
 if (parm == AC_PWRST_D0) {
  format = snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_CONV, 0);
  if (!format && (spec->dac_stream_tag[index] != format))
   snd_hda_codec_write(codec, nid, 0,
        AC_VERB_SET_CHANNEL_STREAMID,
        spec->dac_stream_tag[index]);
 }
}
