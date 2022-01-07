
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int hp_present; } ;


 int cxt5051_update_speaker (struct hda_codec*) ;
 int snd_hda_jack_detect (struct hda_codec*,int) ;

__attribute__((used)) static void cxt5051_hp_automute(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;

 spec->hp_present = snd_hda_jack_detect(codec, 0x16);
 cxt5051_update_speaker(codec);
}
