
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_timer_instance {struct snd_seq_queue* callback_data; } ;
struct snd_seq_timer {unsigned long skew; unsigned long skew_base; int lock; int last_update; int tick; int cur_time; int running; } ;
struct snd_seq_queue {struct snd_seq_timer* timer; } ;


 int do_gettimeofday (int *) ;
 int snd_seq_check_queue (struct snd_seq_queue*,int,int ) ;
 int snd_seq_inc_time_nsec (int *,unsigned long) ;
 int snd_seq_timer_update_tick (int *,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_seq_timer_interrupt(struct snd_timer_instance *timeri,
        unsigned long resolution,
        unsigned long ticks)
{
 unsigned long flags;
 struct snd_seq_queue *q = timeri->callback_data;
 struct snd_seq_timer *tmr;

 if (q == ((void*)0))
  return;
 tmr = q->timer;
 if (tmr == ((void*)0))
  return;
 if (!tmr->running)
  return;

 resolution *= ticks;
 if (tmr->skew != tmr->skew_base) {

  resolution = (resolution >> 16) * tmr->skew +
   (((resolution & 0xffff) * tmr->skew) >> 16);
 }

 spin_lock_irqsave(&tmr->lock, flags);


 snd_seq_inc_time_nsec(&tmr->cur_time, resolution);


 snd_seq_timer_update_tick(&tmr->tick, resolution);


 do_gettimeofday(&tmr->last_update);

 spin_unlock_irqrestore(&tmr->lock, flags);


 snd_seq_check_queue(q, 1, 0);
}
