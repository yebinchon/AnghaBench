
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {int gen; } ;


 int kfree (struct ad198x_spec*) ;
 int snd_hda_detach_beep_device (struct hda_codec*) ;
 int snd_hda_gen_spec_free (int *) ;

__attribute__((used)) static void ad198x_free(struct hda_codec *codec)
{
 struct ad198x_spec *spec = codec->spec;

 if (!spec)
  return;

 snd_hda_gen_spec_free(&spec->gen);
 kfree(spec);
 snd_hda_detach_beep_device(codec);
}
