
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {int running; int last_update; int ticks; int timeri; int initialized; } ;


 int EBUSY ;
 int EINVAL ;
 int do_gettimeofday (int *) ;
 scalar_t__ initialize_timer (struct snd_seq_timer*) ;
 int snd_seq_timer_reset (struct snd_seq_timer*) ;
 int snd_timer_start (int ,int ) ;

int snd_seq_timer_continue(struct snd_seq_timer * tmr)
{
 if (! tmr->timeri)
  return -EINVAL;
 if (tmr->running)
  return -EBUSY;
 if (! tmr->initialized) {
  snd_seq_timer_reset(tmr);
  if (initialize_timer(tmr) < 0)
   return -EINVAL;
 }
 snd_timer_start(tmr->timeri, tmr->ticks);
 tmr->running = 1;
 do_gettimeofday(&tmr->last_update);
 return 0;
}
