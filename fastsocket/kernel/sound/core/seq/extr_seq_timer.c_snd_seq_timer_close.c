
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {int * timeri; } ;
struct snd_seq_queue {struct snd_seq_timer* timer; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_timer_close (int *) ;
 int snd_timer_stop (int *) ;

int snd_seq_timer_close(struct snd_seq_queue *q)
{
 struct snd_seq_timer *tmr;

 tmr = q->timer;
 if (snd_BUG_ON(!tmr))
  return -EINVAL;
 if (tmr->timeri) {
  snd_timer_stop(tmr->timeri);
  snd_timer_close(tmr->timeri);
  tmr->timeri = ((void*)0);
 }
 return 0;
}
