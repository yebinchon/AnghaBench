
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sf_list {int presets_mutex; int lock; scalar_t__ presets_locked; } ;


 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
unlock_preset(struct snd_sf_list *sflist)
{
 unsigned long flags;
 spin_lock_irqsave(&sflist->lock, flags);
 sflist->presets_locked = 0;
 spin_unlock_irqrestore(&sflist->lock, flags);
 mutex_unlock(&sflist->presets_mutex);
}
