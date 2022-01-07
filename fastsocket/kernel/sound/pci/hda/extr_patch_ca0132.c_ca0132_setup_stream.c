
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_GET_CONV ;
 int AC_VERB_GET_STREAM_FORMAT ;
 int AC_VERB_SET_CHANNEL_STREAMID ;
 int AC_VERB_SET_STREAM_FORMAT ;
 int msleep (int) ;
 unsigned int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,unsigned int) ;
 int snd_printdd (char*,int ,int,int,int) ;

__attribute__((used)) static void ca0132_setup_stream(struct hda_codec *codec, hda_nid_t nid,
     u32 stream_tag,
     int channel_id, int format)
{
 unsigned int oldval, newval;

 if (!nid)
  return;

 snd_printdd(
     "ca0132_setup_stream: NID=0x%x, stream=0x%x, "
     "channel=%d, format=0x%x\n",
     nid, stream_tag, channel_id, format);


 oldval = snd_hda_codec_read(codec, nid, 0,
        AC_VERB_GET_STREAM_FORMAT,
        0);
 if (oldval != format) {
  msleep(20);
  snd_hda_codec_write(codec, nid, 0,
        AC_VERB_SET_STREAM_FORMAT,
        format);
 }

 oldval = snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_CONV, 0);
 newval = (stream_tag << 4) | channel_id;
 if (oldval != newval) {
  snd_hda_codec_write(codec, nid, 0,
        AC_VERB_SET_CHANNEL_STREAMID,
        newval);
 }
}
