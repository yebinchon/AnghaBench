
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {int private_value; } ;
struct hda_gen_spec {int hp_mic_jack_modes; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 int ENOMEM ;
 int get_in_jack_num_items (struct hda_codec*,int ) ;
 int get_out_jack_num_items (struct hda_codec*,int ) ;
 int hp_mic_jack_mode_enum ;
 struct snd_kcontrol_new* snd_hda_gen_add_kctl (struct hda_gen_spec*,char*,int *) ;

__attribute__((used)) static int create_hp_mic_jack_mode(struct hda_codec *codec, hda_nid_t pin)
{
 struct hda_gen_spec *spec = codec->spec;
 struct snd_kcontrol_new *knew;

 if (get_out_jack_num_items(codec, pin) <= 1 &&
     get_in_jack_num_items(codec, pin) <= 1)
  return 0;
 knew = snd_hda_gen_add_kctl(spec, "Headphone Mic Jack Mode",
        &hp_mic_jack_mode_enum);
 if (!knew)
  return -ENOMEM;
 knew->private_value = pin;
 spec->hp_mic_jack_modes = 1;
 return 0;
}
