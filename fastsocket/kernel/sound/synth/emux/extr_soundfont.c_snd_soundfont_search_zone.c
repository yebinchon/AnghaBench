
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sf_zone {int dummy; } ;
struct snd_sf_list {int lock; scalar_t__ presets_locked; } ;


 int search_zones (struct snd_sf_list*,int*,int,int,int,struct snd_sf_zone**,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
snd_soundfont_search_zone(struct snd_sf_list *sflist, int *notep, int vel,
     int preset, int bank,
     int def_preset, int def_bank,
     struct snd_sf_zone **table, int max_layers)
{
 int nvoices;
 unsigned long flags;





 spin_lock_irqsave(&sflist->lock, flags);
 if (sflist->presets_locked) {
  spin_unlock_irqrestore(&sflist->lock, flags);
  return 0;
 }
 nvoices = search_zones(sflist, notep, vel, preset, bank,
          table, max_layers, 0);
 if (! nvoices) {
  if (preset != def_preset || bank != def_bank)
   nvoices = search_zones(sflist, notep, vel,
            def_preset, def_bank,
            table, max_layers, 0);
 }
 spin_unlock_irqrestore(&sflist->lock, flags);
 return nvoices;
}
