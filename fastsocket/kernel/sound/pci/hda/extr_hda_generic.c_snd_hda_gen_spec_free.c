
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {int loopback_list; int paths; } ;


 int free_kctls (struct hda_gen_spec*) ;
 int snd_array_free (int *) ;

void snd_hda_gen_spec_free(struct hda_gen_spec *spec)
{
 if (!spec)
  return;
 free_kctls(spec);
 snd_array_free(&spec->paths);
 snd_array_free(&spec->loopback_list);
}
