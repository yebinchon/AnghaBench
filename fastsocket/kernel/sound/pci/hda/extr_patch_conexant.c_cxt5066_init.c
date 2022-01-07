
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unsol_event; } ;
struct hda_codec {TYPE_1__ patch_ops; } ;


 int conexant_init (struct hda_codec*) ;
 int cxt5066_automic (struct hda_codec*) ;
 int cxt5066_hp_automute (struct hda_codec*) ;
 int cxt5066_set_mic_boost (struct hda_codec*) ;
 int snd_printdd (char*) ;

__attribute__((used)) static int cxt5066_init(struct hda_codec *codec)
{
 snd_printdd("CXT5066: init\n");
 conexant_init(codec);
 if (codec->patch_ops.unsol_event) {
  cxt5066_hp_automute(codec);
  cxt5066_automic(codec);
 }
 cxt5066_set_mic_boost(codec);
 return 0;
}
