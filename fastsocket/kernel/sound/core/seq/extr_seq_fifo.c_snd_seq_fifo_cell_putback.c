
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_fifo {int lock; int cells; struct snd_seq_event_cell* head; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_seq_fifo_cell_putback(struct snd_seq_fifo *f,
          struct snd_seq_event_cell *cell)
{
 unsigned long flags;

 if (cell) {
  spin_lock_irqsave(&f->lock, flags);
  cell->next = f->head;
  f->head = cell;
  f->cells++;
  spin_unlock_irqrestore(&f->lock, flags);
 }
}
