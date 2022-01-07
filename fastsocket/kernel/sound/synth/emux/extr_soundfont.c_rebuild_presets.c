
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soundfont {struct snd_sf_zone* zones; struct snd_soundfont* next; } ;
struct snd_sf_zone {int * sample; int v; int mapped; struct snd_sf_zone* next; } ;
struct snd_sf_list {struct snd_soundfont* fonts; int presets; } ;


 int add_preset (struct snd_sf_list*,struct snd_sf_zone*) ;
 int memset (int ,int ,int) ;
 int * set_sample (struct snd_soundfont*,int *) ;

__attribute__((used)) static void
rebuild_presets(struct snd_sf_list *sflist)
{
 struct snd_soundfont *sf;
 struct snd_sf_zone *cur;


 memset(sflist->presets, 0, sizeof(sflist->presets));


 for (sf = sflist->fonts; sf; sf = sf->next) {
  for (cur = sf->zones; cur; cur = cur->next) {
   if (! cur->mapped && cur->sample == ((void*)0)) {

    cur->sample = set_sample(sf, &cur->v);
    if (cur->sample == ((void*)0))
     continue;
   }

   add_preset(sflist, cur);
  }
 }
}
