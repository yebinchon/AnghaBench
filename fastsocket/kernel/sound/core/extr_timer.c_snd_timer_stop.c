
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_instance {scalar_t__ pticks; int ticks; int cticks; struct snd_timer* timer; } ;
struct snd_timer {int lock; } ;


 int EINVAL ;
 int SNDRV_TIMER_EVENT_STOP ;
 int _snd_timer_stop (struct snd_timer_instance*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_timer_stop(struct snd_timer_instance *timeri)
{
 struct snd_timer *timer;
 unsigned long flags;
 int err;

 err = _snd_timer_stop(timeri, 0, SNDRV_TIMER_EVENT_STOP);
 if (err < 0)
  return err;
 timer = timeri->timer;
 if (!timer)
  return -EINVAL;
 spin_lock_irqsave(&timer->lock, flags);
 timeri->cticks = timeri->ticks;
 timeri->pticks = 0;
 spin_unlock_irqrestore(&timer->lock, flags);
 return 0;
}
