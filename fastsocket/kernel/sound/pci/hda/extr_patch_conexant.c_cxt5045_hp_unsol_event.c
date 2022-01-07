
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;




 int cxt5045_hp_automic (struct hda_codec*) ;
 int cxt5045_hp_automute (struct hda_codec*) ;

__attribute__((used)) static void cxt5045_hp_unsol_event(struct hda_codec *codec,
       unsigned int res)
{
 res >>= 26;
 switch (res) {
 case 129:
  cxt5045_hp_automute(codec);
  break;
 case 128:
  cxt5045_hp_automic(codec);
  break;

 }
}
