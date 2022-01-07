
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_AMPCAP_NUM_STEPS_SHIFT ;
 unsigned int AC_AMPCAP_OFFSET_SHIFT ;
 int HDA_OUTPUT ;
 unsigned int query_amp_caps (struct hda_codec*,int ,int ) ;
 int snd_hda_override_amp_caps (struct hda_codec*,int ,int ,unsigned int) ;

__attribute__((used)) static void fix_volume_caps(struct hda_codec *codec, hda_nid_t dac)
{
 unsigned int caps;


 caps = query_amp_caps(codec, dac, HDA_OUTPUT);
 caps &= ~(0x7f << AC_AMPCAP_NUM_STEPS_SHIFT);
 caps |= ((caps >> AC_AMPCAP_OFFSET_SHIFT) & 0x7f)
  << AC_AMPCAP_NUM_STEPS_SHIFT;
 snd_hda_override_amp_caps(codec, dac, HDA_OUTPUT, caps);
}
