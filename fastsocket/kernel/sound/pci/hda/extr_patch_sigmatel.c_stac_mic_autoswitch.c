
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_jack_tbl {int dummy; } ;
struct hda_codec {int dummy; } ;


 int jack_update_power (struct hda_codec*,struct hda_jack_tbl*) ;
 int snd_hda_gen_mic_autoswitch (struct hda_codec*,struct hda_jack_tbl*) ;

__attribute__((used)) static void stac_mic_autoswitch(struct hda_codec *codec,
    struct hda_jack_tbl *jack)
{
 snd_hda_gen_mic_autoswitch(codec, jack);
 jack_update_power(codec, jack);
}
