
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_DIPXMIT_DISABLE ;
 int AC_VERB_SET_HDMI_DIP_XMIT ;
 int hdmi_set_dip_index (struct hda_codec*,int ,int,int) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static void hdmi_stop_infoframe_trans(struct hda_codec *codec,
          hda_nid_t pin_nid)
{
 hdmi_set_dip_index(codec, pin_nid, 0x0, 0x0);
 snd_hda_codec_write(codec, pin_nid, 0, AC_VERB_SET_HDMI_DIP_XMIT,
      AC_DIPXMIT_DISABLE);
}
