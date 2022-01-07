
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 unsigned int AC_AMPCAP_MIN_MUTE ;
 unsigned int AC_AMPCAP_MUTE ;
 int AC_AMP_SET_INDEX_SHIFT ;
 int AC_AMP_SET_INPUT ;
 int AC_AMP_SET_LEFT ;
 int AC_AMP_SET_OUTPUT ;
 int AC_AMP_SET_RIGHT ;
 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int HDA_AMP_MUTE ;
 int HDA_OUTPUT ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int) ;

__attribute__((used)) static void put_vol_mute(struct hda_codec *codec, unsigned int amp_caps,
    hda_nid_t nid, int ch, int direction, int index,
    int val)
{
 u32 parm;

 parm = ch ? AC_AMP_SET_RIGHT : AC_AMP_SET_LEFT;
 parm |= direction == HDA_OUTPUT ? AC_AMP_SET_OUTPUT : AC_AMP_SET_INPUT;
 parm |= index << AC_AMP_SET_INDEX_SHIFT;
 if ((val & HDA_AMP_MUTE) && !(amp_caps & AC_AMPCAP_MUTE) &&
     (amp_caps & AC_AMPCAP_MIN_MUTE))
  ;
 else
  parm |= val;
 snd_hda_codec_write(codec, nid, 0, AC_VERB_SET_AMP_GAIN_MUTE, parm);
}
