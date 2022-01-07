
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;





 int cxt5051_hp_automute (struct hda_codec*) ;
 int cxt5051_portb_automic (struct hda_codec*) ;
 int cxt5051_portc_automic (struct hda_codec*) ;

__attribute__((used)) static void cxt5051_hp_unsol_event(struct hda_codec *codec,
       unsigned int res)
{
 switch (res >> 26) {
 case 130:
  cxt5051_hp_automute(codec);
  break;
 case 129:
  cxt5051_portb_automic(codec);
  break;
 case 128:
  cxt5051_portc_automic(codec);
  break;
 }
}
