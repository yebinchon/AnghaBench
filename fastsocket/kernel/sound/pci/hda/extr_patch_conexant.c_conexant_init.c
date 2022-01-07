
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct conexant_spec* spec; } ;
struct conexant_spec {int num_init_verbs; int * init_verbs; } ;


 int snd_hda_sequence_write (struct hda_codec*,int ) ;

__attribute__((used)) static int conexant_init(struct hda_codec *codec)
{
 struct conexant_spec *spec = codec->spec;
 int i;

 for (i = 0; i < spec->num_init_verbs; i++)
  snd_hda_sequence_write(codec, spec->init_verbs[i]);
 return 0;
}
