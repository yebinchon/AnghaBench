
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_spec {int gen; } ;
struct hda_codec {struct via_spec* spec; } ;


 int kfree (struct via_spec*) ;
 int snd_hda_gen_spec_free (int *) ;
 int vt1708_stop_hp_work (struct hda_codec*) ;

__attribute__((used)) static void via_free(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;

 if (!spec)
  return;

 vt1708_stop_hp_work(codec);
 snd_hda_gen_spec_free(&spec->gen);
 kfree(spec);
}
