
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigmatel_spec {int gpio_mask; int gpio_dir; int gpio_data; int gen; } ;
struct hda_codec {struct sigmatel_spec* spec; } ;


 int ENOMEM ;
 int snd_hda_gen_add_kctl (int *,char*,int *) ;
 int stac_hp_bass_sw_ctrl ;

__attribute__((used)) static int stac_add_hp_bass_switch(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;

 if (!snd_hda_gen_add_kctl(&spec->gen, "Bass Speaker Playback Switch",
      &stac_hp_bass_sw_ctrl))
  return -ENOMEM;

 spec->gpio_mask |= 0x20;
 spec->gpio_dir |= 0x20;
 spec->gpio_data |= 0x20;
 return 0;
}
