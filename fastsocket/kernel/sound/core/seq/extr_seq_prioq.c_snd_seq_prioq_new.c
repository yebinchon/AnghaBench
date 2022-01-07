
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_prioq {scalar_t__ cells; int * tail; int * head; int lock; } ;


 int GFP_KERNEL ;
 struct snd_seq_prioq* kzalloc (int,int ) ;
 int snd_printd (char*) ;
 int spin_lock_init (int *) ;

struct snd_seq_prioq *snd_seq_prioq_new(void)
{
 struct snd_seq_prioq *f;

 f = kzalloc(sizeof(*f), GFP_KERNEL);
 if (f == ((void*)0)) {
  snd_printd("oops: malloc failed for snd_seq_prioq_new()\n");
  return ((void*)0);
 }

 spin_lock_init(&f->lock);
 f->head = ((void*)0);
 f->tail = ((void*)0);
 f->cells = 0;

 return f;
}
