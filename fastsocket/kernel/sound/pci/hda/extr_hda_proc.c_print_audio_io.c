
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_CONV_CHANNEL ;
 int AC_CONV_STREAM ;
 int AC_CONV_STREAM_SHIFT ;
 int AC_SDI_SELECT ;
 int AC_VERB_GET_CONV ;
 int AC_VERB_GET_SDI_SELECT ;
 unsigned int AC_WID_AUD_IN ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int,...) ;

__attribute__((used)) static void print_audio_io(struct snd_info_buffer *buffer,
      struct hda_codec *codec, hda_nid_t nid,
      unsigned int wid_type)
{
 int conv = snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_CONV, 0);
 snd_iprintf(buffer,
      "  Converter: stream=%d, channel=%d\n",
      (conv & AC_CONV_STREAM) >> AC_CONV_STREAM_SHIFT,
      conv & AC_CONV_CHANNEL);

 if (wid_type == AC_WID_AUD_IN && (conv & AC_CONV_CHANNEL) == 0) {
  int sdi = snd_hda_codec_read(codec, nid, 0,
          AC_VERB_GET_SDI_SELECT, 0);
  snd_iprintf(buffer, "  SDI-Select: %d\n",
       sdi & AC_SDI_SELECT);
 }
}
