
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;




 int ad1884a_hp_automute (struct hda_codec*) ;
 int ad1984a_touchsmart_automic (struct hda_codec*) ;

__attribute__((used)) static void ad1984a_touchsmart_unsol_event(struct hda_codec *codec,
 unsigned int res)
{
 switch (res >> 26) {
 case 129:
  ad1884a_hp_automute(codec);
  break;
 case 128:
  ad1984a_touchsmart_automic(codec);
  break;
 }
}
