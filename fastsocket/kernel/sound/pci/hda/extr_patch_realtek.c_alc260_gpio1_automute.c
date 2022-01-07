
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_codec {struct alc_spec* spec; } ;
struct TYPE_2__ {int hp_jack_present; } ;
struct alc_spec {TYPE_1__ gen; } ;


 int AC_VERB_SET_GPIO_DATA ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int ,int ) ;

__attribute__((used)) static void alc260_gpio1_automute(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;
 snd_hda_codec_write(codec, 0x01, 0, AC_VERB_SET_GPIO_DATA,
       spec->gen.hp_jack_present);
}
