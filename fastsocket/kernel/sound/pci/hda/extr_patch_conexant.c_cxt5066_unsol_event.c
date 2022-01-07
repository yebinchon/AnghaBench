
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;




 int cxt5066_automic (struct hda_codec*) ;
 int cxt5066_hp_automute (struct hda_codec*) ;
 int snd_printdd (char*,unsigned int,unsigned int) ;

__attribute__((used)) static void cxt5066_unsol_event(struct hda_codec *codec, unsigned int res)
{
 snd_printdd("CXT5066: unsol event %x (%x)\n", res, res >> 26);
 switch (res >> 26) {
 case 129:
  cxt5066_hp_automute(codec);
  break;
 case 128:
  cxt5066_automic(codec);
  break;
 }
}
