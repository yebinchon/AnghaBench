
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer_instance {int flags; int active_list; int ack_list; struct snd_timer* timer; } ;
struct TYPE_2__ {int (* start ) (struct snd_timer*) ;int (* stop ) (struct snd_timer*) ;} ;
struct snd_timer {int flags; int lock; TYPE_1__ hw; int running; } ;


 int EINVAL ;
 int ENXIO ;
 int SNDRV_TIMER_EVENT_RESOLUTION ;
 int SNDRV_TIMER_FLG_CHANGE ;
 int SNDRV_TIMER_FLG_RESCHED ;
 int SNDRV_TIMER_IFLG_RUNNING ;
 int SNDRV_TIMER_IFLG_SLAVE ;
 int SNDRV_TIMER_IFLG_START ;
 int list_del_init (int *) ;
 int slave_active_lock ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_timer_notify1 (struct snd_timer_instance*,int) ;
 int snd_timer_reschedule (struct snd_timer*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct snd_timer*) ;
 int stub2 (struct snd_timer*) ;

__attribute__((used)) static int _snd_timer_stop(struct snd_timer_instance * timeri,
      int keep_flag, int event)
{
 struct snd_timer *timer;
 unsigned long flags;

 if (snd_BUG_ON(!timeri))
  return -ENXIO;

 if (timeri->flags & SNDRV_TIMER_IFLG_SLAVE) {
  if (!keep_flag) {
   spin_lock_irqsave(&slave_active_lock, flags);
   timeri->flags &= ~SNDRV_TIMER_IFLG_RUNNING;
   spin_unlock_irqrestore(&slave_active_lock, flags);
  }
  goto __end;
 }
 timer = timeri->timer;
 if (!timer)
  return -EINVAL;
 spin_lock_irqsave(&timer->lock, flags);
 list_del_init(&timeri->ack_list);
 list_del_init(&timeri->active_list);
 if ((timeri->flags & SNDRV_TIMER_IFLG_RUNNING) &&
     !(--timer->running)) {
  timer->hw.stop(timer);
  if (timer->flags & SNDRV_TIMER_FLG_RESCHED) {
   timer->flags &= ~SNDRV_TIMER_FLG_RESCHED;
   snd_timer_reschedule(timer, 0);
   if (timer->flags & SNDRV_TIMER_FLG_CHANGE) {
    timer->flags &= ~SNDRV_TIMER_FLG_CHANGE;
    timer->hw.start(timer);
   }
  }
 }
 if (!keep_flag)
  timeri->flags &=
   ~(SNDRV_TIMER_IFLG_RUNNING | SNDRV_TIMER_IFLG_START);
 spin_unlock_irqrestore(&timer->lock, flags);
      __end:
 if (event != SNDRV_TIMER_EVENT_RESOLUTION)
  snd_timer_notify1(timeri, event);
 return 0;
}
