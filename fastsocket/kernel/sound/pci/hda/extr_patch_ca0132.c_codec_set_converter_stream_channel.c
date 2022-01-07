
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_CHANNEL_STREAMID ;
 int codec_send_command (struct hda_codec*,int ,int ,unsigned char,unsigned int*) ;

__attribute__((used)) static int codec_set_converter_stream_channel(struct hda_codec *codec,
    hda_nid_t nid, unsigned char stream,
    unsigned char channel, unsigned int *res)
{
 unsigned char converter_stream_channel = 0;

 converter_stream_channel = (stream << 4) | (channel & 0x0f);
 return codec_send_command(codec, nid, AC_VERB_SET_CHANNEL_STREAMID,
    converter_stream_channel, res);
}
