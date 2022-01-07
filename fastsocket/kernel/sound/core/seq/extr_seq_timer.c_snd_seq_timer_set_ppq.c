
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer {int ppq; int lock; int tempo; int tick; scalar_t__ running; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_printd (char*) ;
 int snd_seq_timer_set_tick_resolution (int *,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_timer_set_ppq(struct snd_seq_timer * tmr, int ppq)
{
 unsigned long flags;

 if (snd_BUG_ON(!tmr))
  return -EINVAL;
 if (ppq <= 0)
  return -EINVAL;
 spin_lock_irqsave(&tmr->lock, flags);
 if (tmr->running && (ppq != tmr->ppq)) {


  spin_unlock_irqrestore(&tmr->lock, flags);
  snd_printd("seq: cannot change ppq of a running timer\n");
  return -EBUSY;
 }

 tmr->ppq = ppq;
 snd_seq_timer_set_tick_resolution(&tmr->tick, tmr->tempo, tmr->ppq);
 spin_unlock_irqrestore(&tmr->lock, flags);
 return 0;
}
