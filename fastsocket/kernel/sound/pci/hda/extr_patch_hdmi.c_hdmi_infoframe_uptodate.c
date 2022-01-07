
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 scalar_t__ AC_DIPXMIT_BEST ;
 int AC_VERB_GET_HDMI_DIP_DATA ;
 int AC_VERB_GET_HDMI_DIP_XMIT ;
 int hdmi_set_dip_index (struct hda_codec*,int ,int,int) ;
 scalar_t__ snd_hda_codec_read (struct hda_codec*,int ,int ,int ,int ) ;

__attribute__((used)) static bool hdmi_infoframe_uptodate(struct hda_codec *codec, hda_nid_t pin_nid,
        u8 *dip, int size)
{
 u8 val;
 int i;

 if (snd_hda_codec_read(codec, pin_nid, 0, AC_VERB_GET_HDMI_DIP_XMIT, 0)
           != AC_DIPXMIT_BEST)
  return 0;

 hdmi_set_dip_index(codec, pin_nid, 0x0, 0x0);
 for (i = 0; i < size; i++) {
  val = snd_hda_codec_read(codec, pin_nid, 0,
      AC_VERB_GET_HDMI_DIP_DATA, 0);
  if (val != dip[i])
   return 0;
 }

 return 1;
}
