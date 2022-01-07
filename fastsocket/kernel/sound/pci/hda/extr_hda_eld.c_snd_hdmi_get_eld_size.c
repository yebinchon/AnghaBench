
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_DIPSIZE_ELD_BUF ;
 int AC_VERB_GET_HDMI_DIP_SIZE ;
 int snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;

int snd_hdmi_get_eld_size(struct hda_codec *codec, hda_nid_t nid)
{
 return snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_HDMI_DIP_SIZE,
       AC_DIPSIZE_ELD_BUF);
}
