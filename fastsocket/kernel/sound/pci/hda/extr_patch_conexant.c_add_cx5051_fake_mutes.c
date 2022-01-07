
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_AMPCAP_MIN_MUTE ;
 int HDA_OUTPUT ;
 int query_amp_caps (struct hda_codec*,int,int ) ;
 int snd_hda_override_amp_caps (struct hda_codec*,int,int ,int) ;

__attribute__((used)) static void add_cx5051_fake_mutes(struct hda_codec *codec)
{
 static hda_nid_t out_nids[] = {
  0x10, 0x11, 0
 };
 hda_nid_t *p;

 for (p = out_nids; *p; p++)
  snd_hda_override_amp_caps(codec, *p, HDA_OUTPUT,
       AC_AMPCAP_MIN_MUTE |
       query_amp_caps(codec, *p, HDA_OUTPUT));
}
