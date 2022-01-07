
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol_new {int index; int name; } ;
struct TYPE_2__ {int used; } ;
struct hda_gen_spec {TYPE_1__ kctls; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 struct snd_kcontrol_new* snd_array_elem (TYPE_1__*,int) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static bool find_kctl_name(struct hda_codec *codec, const char *name, int idx)
{
 struct hda_gen_spec *spec = codec->spec;
 int i;

 for (i = 0; i < spec->kctls.used; i++) {
  struct snd_kcontrol_new *kctl = snd_array_elem(&spec->kctls, i);
  if (!strcmp(kctl->name, name) && kctl->index == idx)
   return 1;
 }
 return 0;
}
