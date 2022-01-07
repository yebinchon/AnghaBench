
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int dummy; } ;
struct snd_seq_fifo {int lock; scalar_t__ cells; int * tail; struct snd_seq_event_cell* head; struct snd_seq_pool* pool; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_seq_cell_free (struct snd_seq_event_cell*) ;
 int snd_seq_pool_delete (struct snd_seq_pool**) ;
 scalar_t__ snd_seq_pool_init (struct snd_seq_pool*) ;
 struct snd_seq_pool* snd_seq_pool_new (int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_seq_fifo_resize(struct snd_seq_fifo *f, int poolsize)
{
 unsigned long flags;
 struct snd_seq_pool *newpool, *oldpool;
 struct snd_seq_event_cell *cell, *next, *oldhead;

 if (snd_BUG_ON(!f || !f->pool))
  return -EINVAL;


 newpool = snd_seq_pool_new(poolsize);
 if (newpool == ((void*)0))
  return -ENOMEM;
 if (snd_seq_pool_init(newpool) < 0) {
  snd_seq_pool_delete(&newpool);
  return -ENOMEM;
 }

 spin_lock_irqsave(&f->lock, flags);

 oldpool = f->pool;
 oldhead = f->head;

 f->pool = newpool;
 f->head = ((void*)0);
 f->tail = ((void*)0);
 f->cells = 0;

 spin_unlock_irqrestore(&f->lock, flags);


 for (cell = oldhead; cell; cell = next) {
  next = cell->next;
  snd_seq_cell_free(cell);
 }
 snd_seq_pool_delete(&oldpool);

 return 0;
}
