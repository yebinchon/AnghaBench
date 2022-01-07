
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_SET_CVT_CHAN_COUNT ;
 int hdmi_get_channel_count (struct hda_codec*,int ) ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void hdmi_set_channel_count(struct hda_codec *codec,
       hda_nid_t cvt_nid, int chs)
{
 if (chs != hdmi_get_channel_count(codec, cvt_nid))
  snd_hda_codec_write(codec, cvt_nid, 0,
        AC_VERB_SET_CVT_CHAN_COUNT, chs - 1);
}
