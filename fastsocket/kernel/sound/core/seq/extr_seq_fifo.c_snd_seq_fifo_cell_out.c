
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_t ;
struct snd_seq_fifo {int lock; int input_sleep; } ;
struct snd_seq_event_cell {int dummy; } ;


 int EAGAIN ;
 int EINVAL ;
 int ERESTARTSYS ;
 int TASK_INTERRUPTIBLE ;
 int add_wait_queue (int *,int *) ;
 int current ;
 struct snd_seq_event_cell* fifo_cell_out (struct snd_seq_fifo*) ;
 int init_waitqueue_entry (int *,int ) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_current_state (int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irq (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irq (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_fifo_cell_out(struct snd_seq_fifo *f,
     struct snd_seq_event_cell **cellp, int nonblock)
{
 struct snd_seq_event_cell *cell;
 unsigned long flags;
 wait_queue_t wait;

 if (snd_BUG_ON(!f))
  return -EINVAL;

 *cellp = ((void*)0);
 init_waitqueue_entry(&wait, current);
 spin_lock_irqsave(&f->lock, flags);
 while ((cell = fifo_cell_out(f)) == ((void*)0)) {
  if (nonblock) {

   spin_unlock_irqrestore(&f->lock, flags);
   return -EAGAIN;
  }
  set_current_state(TASK_INTERRUPTIBLE);
  add_wait_queue(&f->input_sleep, &wait);
  spin_unlock_irq(&f->lock);
  schedule();
  spin_lock_irq(&f->lock);
  remove_wait_queue(&f->input_sleep, &wait);
  if (signal_pending(current)) {
   spin_unlock_irqrestore(&f->lock, flags);
   return -ERESTARTSYS;
  }
 }
 spin_unlock_irqrestore(&f->lock, flags);
 *cellp = cell;

 return 0;
}
