
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_fifo {int lock; int use_lock; int overflow; } ;
struct snd_seq_event_cell {int dummy; } ;


 int atomic_set (int *,int ) ;
 struct snd_seq_event_cell* fifo_cell_out (struct snd_seq_fifo*) ;
 int snd_seq_cell_free (struct snd_seq_event_cell*) ;
 int snd_use_lock_sync (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_seq_fifo_clear(struct snd_seq_fifo *f)
{
 struct snd_seq_event_cell *cell;
 unsigned long flags;


 atomic_set(&f->overflow, 0);

 snd_use_lock_sync(&f->use_lock);
 spin_lock_irqsave(&f->lock, flags);

 while ((cell = fifo_cell_out(f)) != ((void*)0)) {
  snd_seq_cell_free(cell);
 }
 spin_unlock_irqrestore(&f->lock, flags);
}
