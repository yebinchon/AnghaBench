
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EV_SZ ;
 int SEQ_MAX_QUEUE ;
 int lock ;
 int output_threshold ;
 int play_event (int *) ;
 int qhead ;
 int qlen ;
 int * queue ;
 int seq_playing ;
 int seq_sleeper ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void seq_startplay(void)
{
 int this_one, action;
 unsigned long flags;

 while (qlen > 0)
 {

  spin_lock_irqsave(&lock,flags);
  qhead = ((this_one = qhead) + 1) % SEQ_MAX_QUEUE;
  qlen--;
  spin_unlock_irqrestore(&lock,flags);

  seq_playing = 1;

  if ((action = play_event(&queue[this_one * EV_SZ])))
  {
   if (action == 2)
   {
    qlen++;
    qhead = this_one;
   }
   return;
  }
 }

 seq_playing = 0;

 if ((SEQ_MAX_QUEUE - qlen) >= output_threshold)
  wake_up(&seq_sleeper);
}
