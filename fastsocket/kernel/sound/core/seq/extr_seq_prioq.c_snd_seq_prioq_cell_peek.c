
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_prioq {struct snd_seq_event_cell* head; } ;
struct snd_seq_event_cell {int dummy; } ;


 int snd_printd (char*) ;

struct snd_seq_event_cell *snd_seq_prioq_cell_peek(struct snd_seq_prioq * f)
{
 if (f == ((void*)0)) {
  snd_printd("oops: snd_seq_prioq_cell_in() called with NULL prioq\n");
  return ((void*)0);
 }
 return f->head;
}
