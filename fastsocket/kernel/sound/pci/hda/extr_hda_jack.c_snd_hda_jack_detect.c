
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int get_jack_plug_state (int ) ;
 int snd_hda_pin_sense (struct hda_codec*,int ) ;

int snd_hda_jack_detect(struct hda_codec *codec, hda_nid_t nid)
{
 u32 sense = snd_hda_pin_sense(codec, nid);
 return get_jack_plug_state(sense);
}
