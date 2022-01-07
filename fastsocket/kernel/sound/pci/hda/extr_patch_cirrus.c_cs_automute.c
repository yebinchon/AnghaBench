
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct cs_spec* spec; } ;
struct TYPE_2__ {int master_mute; scalar_t__ hp_jack_present; } ;
struct cs_spec {scalar_t__ gpio_data; scalar_t__ gpio_eapd_speaker; scalar_t__ gpio_eapd_hp; TYPE_1__ gen; scalar_t__ sense_b; scalar_t__ spdif_present; } ;


 int AC_VERB_SET_GPIO_DATA ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,scalar_t__) ;
 int snd_hda_gen_update_outputs (struct hda_codec*) ;

__attribute__((used)) static void cs_automute(struct hda_codec *codec)
{
 struct cs_spec *spec = codec->spec;


 spec->gen.master_mute = !!(spec->spdif_present && spec->sense_b);

 snd_hda_gen_update_outputs(codec);

 if (spec->gpio_eapd_hp) {
  spec->gpio_data = spec->gen.hp_jack_present ?
   spec->gpio_eapd_hp : spec->gpio_eapd_speaker;
  snd_hda_codec_write(codec, 0x01, 0,
        AC_VERB_SET_GPIO_DATA, spec->gpio_data);
 }
}
