
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int connected; int list; int sinks; int sources; struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dapm_widgets; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 struct snd_soc_dapm_widget* dapm_cnew_widget (struct snd_soc_dapm_widget const*) ;
 int list_add (int *,int *) ;

int snd_soc_dapm_new_control(struct snd_soc_codec *codec,
 const struct snd_soc_dapm_widget *widget)
{
 struct snd_soc_dapm_widget *w;

 if ((w = dapm_cnew_widget(widget)) == ((void*)0))
  return -ENOMEM;

 w->codec = codec;
 INIT_LIST_HEAD(&w->sources);
 INIT_LIST_HEAD(&w->sinks);
 INIT_LIST_HEAD(&w->list);
 list_add(&w->list, &codec->dapm_widgets);


 w->connected = 1;
 return 0;
}
