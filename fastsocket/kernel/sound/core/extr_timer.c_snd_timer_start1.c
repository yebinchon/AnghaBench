
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_timer_instance {int flags; int active_list; } ;
struct TYPE_2__ {int flags; int (* start ) (struct snd_timer*) ;} ;
struct snd_timer {unsigned long sticks; scalar_t__ running; TYPE_1__ hw; int flags; int active_list_head; } ;


 int SNDRV_TIMER_FLG_RESCHED ;
 int SNDRV_TIMER_HW_SLAVE ;
 int SNDRV_TIMER_IFLG_RUNNING ;
 int SNDRV_TIMER_IFLG_START ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int stub1 (struct snd_timer*) ;

__attribute__((used)) static int snd_timer_start1(struct snd_timer *timer, struct snd_timer_instance *timeri,
       unsigned long sticks)
{
 list_del(&timeri->active_list);
 list_add_tail(&timeri->active_list, &timer->active_list_head);
 if (timer->running) {
  if (timer->hw.flags & SNDRV_TIMER_HW_SLAVE)
   goto __start_now;
  timer->flags |= SNDRV_TIMER_FLG_RESCHED;
  timeri->flags |= SNDRV_TIMER_IFLG_START;
  return 1;
 } else {
  timer->sticks = sticks;
  timer->hw.start(timer);
       __start_now:
  timer->running++;
  timeri->flags |= SNDRV_TIMER_IFLG_RUNNING;
  return 0;
 }
}
