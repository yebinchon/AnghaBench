
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_HDMI_DIP_INDEX ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void hdmi_set_dip_index(struct hda_codec *codec, hda_nid_t pin_nid,
    int packet_index, int byte_index)
{
 int val;

 val = (packet_index << 5) | (byte_index & 0x1f);

 snd_hda_codec_write(codec, pin_nid, 0, AC_VERB_SET_HDMI_DIP_INDEX, val);
}
