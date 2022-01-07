
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol_new {char const* name; } ;
struct hda_gen_spec {int kctls; } ;


 int GFP_KERNEL ;
 void* kstrdup (char const*,int ) ;
 struct snd_kcontrol_new* snd_array_new (int *) ;

struct snd_kcontrol_new *
snd_hda_gen_add_kctl(struct hda_gen_spec *spec, const char *name,
       const struct snd_kcontrol_new *temp)
{
 struct snd_kcontrol_new *knew = snd_array_new(&spec->kctls);
 if (!knew)
  return ((void*)0);
 *knew = *temp;
 if (name)
  knew->name = kstrdup(name, GFP_KERNEL);
 else if (knew->name)
  knew->name = kstrdup(knew->name, GFP_KERNEL);
 if (!knew->name)
  return ((void*)0);
 return knew;
}
