
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_instance {int flags; unsigned int ticks; unsigned int cticks; scalar_t__ pticks; struct snd_timer* timer; } ;
struct snd_timer {int lock; } ;


 int EINVAL ;
 int SNDRV_TIMER_EVENT_START ;
 int SNDRV_TIMER_IFLG_SLAVE ;
 int snd_timer_notify1 (struct snd_timer_instance*,int ) ;
 int snd_timer_start1 (struct snd_timer*,struct snd_timer_instance*,unsigned int) ;
 int snd_timer_start_slave (struct snd_timer_instance*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_timer_start(struct snd_timer_instance *timeri, unsigned int ticks)
{
 struct snd_timer *timer;
 int result = -EINVAL;
 unsigned long flags;

 if (timeri == ((void*)0) || ticks < 1)
  return -EINVAL;
 if (timeri->flags & SNDRV_TIMER_IFLG_SLAVE) {
  result = snd_timer_start_slave(timeri);
  snd_timer_notify1(timeri, SNDRV_TIMER_EVENT_START);
  return result;
 }
 timer = timeri->timer;
 if (timer == ((void*)0))
  return -EINVAL;
 spin_lock_irqsave(&timer->lock, flags);
 timeri->ticks = timeri->cticks = ticks;
 timeri->pticks = 0;
 result = snd_timer_start1(timer, timeri, ticks);
 spin_unlock_irqrestore(&timer->lock, flags);
 snd_timer_notify1(timeri, SNDRV_TIMER_EVENT_START);
 return result;
}
