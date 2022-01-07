
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t IEV_SZ ;
 scalar_t__ SEQ_1 ;
 int SEQ_MAX_QUEUE ;
 int iqlen ;
 size_t iqtail ;
 int * iqueue ;
 int lock ;
 int memcpy (int *,unsigned char*,int) ;
 int midi_sleeper ;
 scalar_t__ seq_mode ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

void seq_copy_to_input(unsigned char *event_rec, int len)
{
 unsigned long flags;





 if (len != 4 && len != 8)
  return;
 if ((seq_mode == SEQ_1) != (len == 4))
  return;

 if (iqlen >= (SEQ_MAX_QUEUE - 1))
  return;

 spin_lock_irqsave(&lock,flags);
 memcpy(&iqueue[iqtail * IEV_SZ], event_rec, len);
 iqlen++;
 iqtail = (iqtail + 1) % SEQ_MAX_QUEUE;
 wake_up(&midi_sleeper);
 spin_unlock_irqrestore(&lock,flags);
}
