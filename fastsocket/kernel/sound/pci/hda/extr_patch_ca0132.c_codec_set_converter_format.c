
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int VENDOR_CHIPIO_STREAM_FORMAT ;
 int codec_send_command (struct hda_codec*,int ,int ,unsigned short,unsigned int*) ;

__attribute__((used)) static int codec_set_converter_format(struct hda_codec *codec, hda_nid_t nid,
  unsigned short converter_format, unsigned int *res)
{
 return codec_send_command(codec, nid, VENDOR_CHIPIO_STREAM_FORMAT,
    converter_format & 0xffff, res);
}
