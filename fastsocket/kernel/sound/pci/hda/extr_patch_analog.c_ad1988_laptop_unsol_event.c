
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 unsigned int AD1988_HP_EVENT ;
 int ad1988_laptop_hp_off ;
 int ad1988_laptop_hp_on ;
 scalar_t__ snd_hda_jack_detect (struct hda_codec*,int) ;
 int snd_hda_sequence_write (struct hda_codec*,int ) ;

__attribute__((used)) static void ad1988_laptop_unsol_event(struct hda_codec *codec, unsigned int res)
{
 if ((res >> 26) != AD1988_HP_EVENT)
  return;
 if (snd_hda_jack_detect(codec, 0x11))
  snd_hda_sequence_write(codec, ad1988_laptop_hp_on);
 else
  snd_hda_sequence_write(codec, ad1988_laptop_hp_off);
}
