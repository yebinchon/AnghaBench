
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer_instance {TYPE_1__* master; int active_list; int flags; } ;
struct TYPE_2__ {int slave_active_head; } ;


 int SNDRV_TIMER_IFLG_RUNNING ;
 int list_add_tail (int *,int *) ;
 int slave_active_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_timer_start_slave(struct snd_timer_instance *timeri)
{
 unsigned long flags;

 spin_lock_irqsave(&slave_active_lock, flags);
 timeri->flags |= SNDRV_TIMER_IFLG_RUNNING;
 if (timeri->master)
  list_add_tail(&timeri->active_list,
         &timeri->master->slave_active_head);
 spin_unlock_irqrestore(&slave_active_lock, flags);
 return 1;
}
