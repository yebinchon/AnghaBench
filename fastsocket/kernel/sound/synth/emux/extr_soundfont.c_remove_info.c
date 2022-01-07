
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soundfont {struct snd_sf_zone* zones; } ;
struct snd_sf_zone {int bank; int instr; struct snd_sf_zone* next; int mapped; } ;
struct snd_sf_list {int dummy; } ;


 int kfree (struct snd_sf_zone*) ;
 int rebuild_presets (struct snd_sf_list*) ;

__attribute__((used)) static int
remove_info(struct snd_sf_list *sflist, struct snd_soundfont *sf,
     int bank, int instr)
{
 struct snd_sf_zone *prev, *next, *p;
 int removed = 0;

 prev = ((void*)0);
 for (p = sf->zones; p; p = next) {
  next = p->next;
  if (! p->mapped &&
      p->bank == bank && p->instr == instr) {

   if (prev)
    prev->next = next;
   else
    sf->zones = next;
   removed++;
   kfree(p);
  } else
   prev = p;
 }
 if (removed)
  rebuild_presets(sflist);
 return removed;
}
