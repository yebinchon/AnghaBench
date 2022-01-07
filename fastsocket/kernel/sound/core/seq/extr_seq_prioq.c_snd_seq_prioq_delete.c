
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_prioq {scalar_t__ cells; } ;


 int kfree (struct snd_seq_prioq*) ;
 int snd_printd (char*) ;
 int snd_seq_cell_free (int ) ;
 int snd_seq_prioq_cell_out (struct snd_seq_prioq*) ;

void snd_seq_prioq_delete(struct snd_seq_prioq **fifo)
{
 struct snd_seq_prioq *f = *fifo;
 *fifo = ((void*)0);

 if (f == ((void*)0)) {
  snd_printd("oops: snd_seq_prioq_delete() called with NULL prioq\n");
  return;
 }




 if (f->cells > 0) {

  while (f->cells > 0)
   snd_seq_cell_free(snd_seq_prioq_cell_out(f));
 }

 kfree(f);
}
