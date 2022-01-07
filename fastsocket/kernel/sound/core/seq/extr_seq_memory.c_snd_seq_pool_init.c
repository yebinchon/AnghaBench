
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_pool {int size; int room; int total_elements; int lock; scalar_t__ max_used; struct snd_seq_event_cell* free; struct snd_seq_event_cell* ptr; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; struct snd_seq_pool* pool; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_printd (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct snd_seq_event_cell* vmalloc (int) ;

int snd_seq_pool_init(struct snd_seq_pool *pool)
{
 int cell;
 struct snd_seq_event_cell *cellptr;
 unsigned long flags;

 if (snd_BUG_ON(!pool))
  return -EINVAL;
 if (pool->ptr)
  return 0;

 pool->ptr = vmalloc(sizeof(struct snd_seq_event_cell) * pool->size);
 if (pool->ptr == ((void*)0)) {
  snd_printd("seq: malloc for sequencer events failed\n");
  return -ENOMEM;
 }


 spin_lock_irqsave(&pool->lock, flags);
 pool->free = ((void*)0);

 for (cell = 0; cell < pool->size; cell++) {
  cellptr = pool->ptr + cell;
  cellptr->pool = pool;
  cellptr->next = pool->free;
  pool->free = cellptr;
 }
 pool->room = (pool->size + 1) / 2;


 pool->max_used = 0;
 pool->total_elements = pool->size;
 spin_unlock_irqrestore(&pool->lock, flags);
 return 0;
}
