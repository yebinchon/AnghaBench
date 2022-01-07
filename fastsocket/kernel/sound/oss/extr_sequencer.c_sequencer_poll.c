
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 scalar_t__ SEQ_MAX_QUEUE ;
 scalar_t__ iqlen ;
 int lock ;
 int midi_sleeper ;
 scalar_t__ output_threshold ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ qlen ;
 int seq_sleeper ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned int sequencer_poll(int dev, struct file *file, poll_table * wait)
{
 unsigned long flags;
 unsigned int mask = 0;

 dev = dev >> 4;

 spin_lock_irqsave(&lock,flags);

 poll_wait(file, &midi_sleeper, wait);
 if (iqlen)
  mask |= POLLIN | POLLRDNORM;


 poll_wait(file, &seq_sleeper, wait);
 if ((SEQ_MAX_QUEUE - qlen) >= output_threshold)
  mask |= POLLOUT | POLLWRNORM;
 spin_unlock_irqrestore(&lock,flags);
 return mask;
}
