
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {unsigned int port_d_mode; scalar_t__ cur_eapd; int hp_present; scalar_t__ thinkpad; scalar_t__ dell_automute; } ;


 unsigned int PIN_HP ;
 unsigned int PIN_OUT ;
 scalar_t__ hp_port_a_present (struct conexant_spec*) ;
 int hp_port_d_present (struct conexant_spec*) ;
 int snd_hda_set_pin_ctl (struct hda_codec*,int,unsigned int) ;
 int snd_printdd (char*,int ,scalar_t__) ;

__attribute__((used)) static void cxt5066_update_speaker(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 unsigned int pinctl;

 snd_printdd("CXT5066: update speaker, hp_present=%d, cur_eapd=%d\n",
      spec->hp_present, spec->cur_eapd);


 pinctl = (hp_port_a_present(spec) && spec->cur_eapd) ? PIN_HP : 0;
 snd_hda_set_pin_ctl(codec, 0x19, pinctl);


 pinctl = spec->cur_eapd ? spec->port_d_mode : 0;
 if (spec->dell_automute || spec->thinkpad) {

  if (hp_port_a_present(spec))
   pinctl = 0;
 } else {

  if (!hp_port_d_present(spec))
   pinctl = 0;
 }
 snd_hda_set_pin_ctl(codec, 0x1c, pinctl);


 pinctl = (!spec->hp_present && spec->cur_eapd) ? PIN_OUT : 0;
 snd_hda_set_pin_ctl(codec, 0x1f, pinctl);
}
