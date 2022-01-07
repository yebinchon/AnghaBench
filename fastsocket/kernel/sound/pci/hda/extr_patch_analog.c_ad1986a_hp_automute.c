
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {int jack_present; scalar_t__ inv_jack_detect; } ;


 int ad1986a_update_hp (struct hda_codec*) ;
 int snd_hda_jack_detect (struct hda_codec*,int) ;

__attribute__((used)) static void ad1986a_hp_automute(struct hda_codec *codec)
{
 struct ad198x_spec *spec = codec->spec;

 spec->jack_present = snd_hda_jack_detect(codec, 0x1a);
 if (spec->inv_jack_detect)
  spec->jack_present = !spec->jack_present;
 ad1986a_update_hp(codec);
}
