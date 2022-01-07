
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {unsigned int tempo; int lock; int ppq; int tick; } ;


 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_timer_set_tick_resolution (int *,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_timer_set_tempo(struct snd_seq_timer * tmr, int tempo)
{
 unsigned long flags;

 if (snd_BUG_ON(!tmr))
  return -EINVAL;
 if (tempo <= 0)
  return -EINVAL;
 spin_lock_irqsave(&tmr->lock, flags);
 if ((unsigned int)tempo != tmr->tempo) {
  tmr->tempo = tempo;
  snd_seq_timer_set_tick_resolution(&tmr->tick, tmr->tempo, tmr->ppq);
 }
 spin_unlock_irqrestore(&tmr->lock, flags);
 return 0;
}
