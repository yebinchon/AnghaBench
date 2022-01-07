
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_prioq {int cells; } ;


 int snd_printd (char*) ;

int snd_seq_prioq_avail(struct snd_seq_prioq * f)
{
 if (f == ((void*)0)) {
  snd_printd("oops: snd_seq_prioq_cell_in() called with NULL prioq\n");
  return 0;
 }
 return f->cells;
}
