
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int dummy; } ;


 int kfree (struct conexant_spec*) ;
 int snd_hda_detach_beep_device (struct hda_codec*) ;

__attribute__((used)) static void conexant_free(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 snd_hda_detach_beep_device(codec);
 kfree(spec);
}
