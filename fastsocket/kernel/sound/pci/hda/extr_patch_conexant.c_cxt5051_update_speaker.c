
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {scalar_t__ ideapad; scalar_t__ cur_eapd; scalar_t__ hp_present; } ;


 unsigned int PIN_HP ;
 unsigned int PIN_OUT ;
 int snd_hda_set_pin_ctl (struct hda_codec*,int,unsigned int) ;

__attribute__((used)) static void cxt5051_update_speaker(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 unsigned int pinctl;

 pinctl = (spec->hp_present && spec->cur_eapd) ? PIN_HP : 0;
 snd_hda_set_pin_ctl(codec, 0x16, pinctl);

 pinctl = (!spec->hp_present && spec->cur_eapd) ? PIN_OUT : 0;
 snd_hda_set_pin_ctl(codec, 0x1a, pinctl);

 if (spec->ideapad)
  snd_hda_set_pin_ctl(codec, 0x1b, pinctl);
}
