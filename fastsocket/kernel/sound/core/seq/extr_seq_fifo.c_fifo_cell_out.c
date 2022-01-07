
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_fifo {int cells; struct snd_seq_event_cell* tail; struct snd_seq_event_cell* head; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; } ;



__attribute__((used)) static struct snd_seq_event_cell *fifo_cell_out(struct snd_seq_fifo *f)
{
 struct snd_seq_event_cell *cell;

 if ((cell = f->head) != ((void*)0)) {
  f->head = cell->next;


  if (f->tail == cell)
   f->tail = ((void*)0);

  cell->next = ((void*)0);
  f->cells--;
 }

 return cell;
}
