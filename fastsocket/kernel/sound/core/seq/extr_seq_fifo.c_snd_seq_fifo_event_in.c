
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_fifo {int use_lock; int input_sleep; int lock; int cells; struct snd_seq_event_cell* head; struct snd_seq_event_cell* tail; int overflow; int pool; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;
struct snd_seq_event {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int atomic_inc (int *) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_event_dup (int ,struct snd_seq_event*,struct snd_seq_event_cell**,int,int *) ;
 int snd_use_lock_free (int *) ;
 int snd_use_lock_use (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

int snd_seq_fifo_event_in(struct snd_seq_fifo *f,
     struct snd_seq_event *event)
{
 struct snd_seq_event_cell *cell;
 unsigned long flags;
 int err;

 if (snd_BUG_ON(!f))
  return -EINVAL;

 snd_use_lock_use(&f->use_lock);
 err = snd_seq_event_dup(f->pool, event, &cell, 1, ((void*)0));
 if (err < 0) {
  if (err == -ENOMEM)
   atomic_inc(&f->overflow);
  snd_use_lock_free(&f->use_lock);
  return err;
 }


 spin_lock_irqsave(&f->lock, flags);
 if (f->tail != ((void*)0))
  f->tail->next = cell;
 f->tail = cell;
 if (f->head == ((void*)0))
  f->head = cell;
 f->cells++;
 spin_unlock_irqrestore(&f->lock, flags);


 if (waitqueue_active(&f->input_sleep))
  wake_up(&f->input_sleep);

 snd_use_lock_free(&f->use_lock);

 return 0;

}
