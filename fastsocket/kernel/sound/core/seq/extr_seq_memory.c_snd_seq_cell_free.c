
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_seq_pool {int lock; int output_sleep; struct snd_seq_event_cell* free; } ;
struct TYPE_4__ {int len; struct snd_seq_event_cell* ptr; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;
struct TYPE_6__ {TYPE_2__ data; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; TYPE_3__ event; struct snd_seq_pool* pool; } ;


 int SNDRV_SEQ_EXT_CHAINED ;
 int free_cell (struct snd_seq_pool*,struct snd_seq_event_cell*) ;
 scalar_t__ snd_BUG_ON (int) ;
 scalar_t__ snd_seq_ev_is_variable (TYPE_3__*) ;
 scalar_t__ snd_seq_output_ok (struct snd_seq_pool*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up (int *) ;

void snd_seq_cell_free(struct snd_seq_event_cell * cell)
{
 unsigned long flags;
 struct snd_seq_pool *pool;

 if (snd_BUG_ON(!cell))
  return;
 pool = cell->pool;
 if (snd_BUG_ON(!pool))
  return;

 spin_lock_irqsave(&pool->lock, flags);
 free_cell(pool, cell);
 if (snd_seq_ev_is_variable(&cell->event)) {
  if (cell->event.data.ext.len & SNDRV_SEQ_EXT_CHAINED) {
   struct snd_seq_event_cell *curp, *nextptr;
   curp = cell->event.data.ext.ptr;
   for (; curp; curp = nextptr) {
    nextptr = curp->next;
    curp->next = pool->free;
    free_cell(pool, curp);
   }
  }
 }
 if (waitqueue_active(&pool->output_sleep)) {

  if (snd_seq_output_ok(pool))
   wake_up(&pool->output_sleep);
 }
 spin_unlock_irqrestore(&pool->lock, flags);
}
