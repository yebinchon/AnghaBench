
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_all_adcs; int * all_adcs; } ;
struct sigmatel_spec {unsigned int gpio_data; unsigned int eapd_mask; int active_adcs; TYPE_1__ gen; scalar_t__ powerdown_adcs; int power_map_bits; scalar_t__ num_pwrs; int gpio_dir; int gpio_mask; int eapd_switch; } ;
struct hda_codec {int afg; struct sigmatel_spec* spec; } ;


 int AC_PWRST_D3 ;
 int AC_VERB_IDT_SET_POWER_MAP ;
 int AC_VERB_SET_POWER_STATE ;
 int snd_hda_codec_write (struct hda_codec*,int ,int ,int ,int ) ;
 int snd_hda_gen_init (struct hda_codec*) ;
 int stac_gpio_set (struct hda_codec*,int ,int ,unsigned int) ;
 int stac_store_hints (struct hda_codec*) ;

__attribute__((used)) static int stac_init(struct hda_codec *codec)
{
 struct sigmatel_spec *spec = codec->spec;
 unsigned int gpio;
 int i;


 stac_store_hints(codec);


 gpio = spec->gpio_data;



 if (!spec->eapd_switch)
  gpio |= spec->eapd_mask;
 stac_gpio_set(codec, spec->gpio_mask, spec->gpio_dir, gpio);

 snd_hda_gen_init(codec);


 if (spec->num_pwrs)
  snd_hda_codec_write(codec, codec->afg, 0,
        AC_VERB_IDT_SET_POWER_MAP,
        spec->power_map_bits);


 if (spec->powerdown_adcs) {
  for (i = 0; i < spec->gen.num_all_adcs; i++) {
   if (spec->active_adcs & (1 << i))
    continue;
   snd_hda_codec_write(codec, spec->gen.all_adcs[i], 0,
         AC_VERB_SET_POWER_STATE,
         AC_PWRST_D3);
  }
 }

 return 0;
}
