
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_seq_remove_events {int dummy; } ;
struct snd_seq_prioq {int lock; int cells; struct snd_seq_event_cell* tail; struct snd_seq_event_cell* head; } ;
struct TYPE_3__ {int client; } ;
struct TYPE_4__ {TYPE_1__ source; } ;
struct snd_seq_event_cell {struct snd_seq_event_cell* next; TYPE_2__ event; } ;


 scalar_t__ prioq_remove_match (struct snd_seq_remove_events*,TYPE_2__*) ;
 int snd_seq_cell_free (struct snd_seq_event_cell*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void snd_seq_prioq_remove_events(struct snd_seq_prioq * f, int client,
     struct snd_seq_remove_events *info)
{
 struct snd_seq_event_cell *cell, *next;
 unsigned long flags;
 struct snd_seq_event_cell *prev = ((void*)0);
 struct snd_seq_event_cell *freefirst = ((void*)0), *freeprev = ((void*)0), *freenext;


 spin_lock_irqsave(&f->lock, flags);
 cell = f->head;

 while (cell) {
  next = cell->next;
  if (cell->event.source.client == client &&
   prioq_remove_match(info, &cell->event)) {


   if (cell == f->head) {
    f->head = cell->next;
   } else {
    prev->next = cell->next;
   }

   if (cell == f->tail)
    f->tail = cell->next;
   f->cells--;


   cell->next = ((void*)0);
   if (freefirst == ((void*)0)) {
    freefirst = cell;
   } else {
    freeprev->next = cell;
   }

   freeprev = cell;
  } else {
   prev = cell;
  }
  cell = next;
 }
 spin_unlock_irqrestore(&f->lock, flags);


 while (freefirst) {
  freenext = freefirst->next;
  snd_seq_cell_free(freefirst);
  freefirst = freenext;
 }
}
