
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_fifo {scalar_t__ cells; int * tail; int * head; int overflow; int input_sleep; int use_lock; int lock; int * pool; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct snd_seq_fifo*) ;
 struct snd_seq_fifo* kzalloc (int,int ) ;
 int snd_printd (char*) ;
 int snd_seq_pool_delete (int **) ;
 scalar_t__ snd_seq_pool_init (int *) ;
 int * snd_seq_pool_new (int) ;
 int snd_use_lock_init (int *) ;
 int spin_lock_init (int *) ;

struct snd_seq_fifo *snd_seq_fifo_new(int poolsize)
{
 struct snd_seq_fifo *f;

 f = kzalloc(sizeof(*f), GFP_KERNEL);
 if (f == ((void*)0)) {
  snd_printd("malloc failed for snd_seq_fifo_new() \n");
  return ((void*)0);
 }

 f->pool = snd_seq_pool_new(poolsize);
 if (f->pool == ((void*)0)) {
  kfree(f);
  return ((void*)0);
 }
 if (snd_seq_pool_init(f->pool) < 0) {
  snd_seq_pool_delete(&f->pool);
  kfree(f);
  return ((void*)0);
 }

 spin_lock_init(&f->lock);
 snd_use_lock_init(&f->use_lock);
 init_waitqueue_head(&f->input_sleep);
 atomic_set(&f->overflow, 0);

 f->head = ((void*)0);
 f->tail = ((void*)0);
 f->cells = 0;

 return f;
}
