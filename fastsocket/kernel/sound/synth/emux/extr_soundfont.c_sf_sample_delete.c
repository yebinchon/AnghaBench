
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soundfont {struct snd_sf_sample* samples; } ;
struct snd_sf_sample {struct snd_sf_sample* next; } ;
struct snd_sf_list {int dummy; } ;


 int kfree (struct snd_sf_sample*) ;

__attribute__((used)) static void
sf_sample_delete(struct snd_sf_list *sflist, struct snd_soundfont *sf,
   struct snd_sf_sample *sp)
{

 if (sp == sf->samples) {
  sf->samples = sp->next;
  kfree(sp);
 }
}
