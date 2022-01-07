
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct hda_codec {int dummy; } ;


 int AC_AMPCAP_MUTE ;
 int get_amp_direction (struct snd_kcontrol*) ;
 int get_amp_nid (struct snd_kcontrol*) ;
 int query_amp_caps (struct hda_codec*,int ,int ) ;
 struct hda_codec* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static bool ctl_has_mute(struct snd_kcontrol *kcontrol)
{
 struct hda_codec *codec = snd_kcontrol_chip(kcontrol);
 return query_amp_caps(codec, get_amp_nid(kcontrol),
         get_amp_direction(kcontrol)) & AC_AMPCAP_MUTE;
}
