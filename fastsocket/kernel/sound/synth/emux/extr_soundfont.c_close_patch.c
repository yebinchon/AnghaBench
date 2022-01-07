
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sf_list {int open_client; int lock; int * currsf; } ;


 int rebuild_presets (struct snd_sf_list*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
close_patch(struct snd_sf_list *sflist)
{
 unsigned long flags;

 spin_lock_irqsave(&sflist->lock, flags);
 sflist->currsf = ((void*)0);
 sflist->open_client = -1;
 spin_unlock_irqrestore(&sflist->lock, flags);

 rebuild_presets(sflist);

 return 0;

}
