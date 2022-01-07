
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_widget {int num_kcontrols; TYPE_1__* kcontrols; int sinks; int sources; } ;
struct snd_soc_dapm_path {int name; int list_source; int list_sink; int list; } ;
struct snd_soc_codec {int dapm_paths; } ;
struct TYPE_2__ {int name; } ;


 int ENODEV ;
 int dapm_set_path_status (struct snd_soc_dapm_widget*,struct snd_soc_dapm_path*,int) ;
 int list_add (int *,int *) ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static int dapm_connect_mixer(struct snd_soc_codec *codec,
 struct snd_soc_dapm_widget *src, struct snd_soc_dapm_widget *dest,
 struct snd_soc_dapm_path *path, const char *control_name)
{
 int i;


 for (i = 0; i < dest->num_kcontrols; i++) {
  if (!strcmp(control_name, dest->kcontrols[i].name)) {
   list_add(&path->list, &codec->dapm_paths);
   list_add(&path->list_sink, &dest->sources);
   list_add(&path->list_source, &src->sinks);
   path->name = dest->kcontrols[i].name;
   dapm_set_path_status(dest, path, i);
   return 0;
  }
 }
 return -ENODEV;
}
