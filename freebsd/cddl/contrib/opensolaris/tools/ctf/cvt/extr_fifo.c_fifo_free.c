
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* fn_data; struct TYPE_5__* fn_next; struct TYPE_5__* f_head; } ;
typedef TYPE_1__ fifonode_t ;
typedef TYPE_1__ fifo_t ;


 void fifo_nullfree (void*) ;
 int free (TYPE_1__*) ;
 void stub1 (void*) ;

void
fifo_free(fifo_t *f, void (*freefn)(void *))
{
 fifonode_t *fn = f->f_head;
 fifonode_t *tmp;

 if (freefn == ((void*)0))
  freefn = fifo_nullfree;

 while (fn) {
  (*freefn)(fn->fn_data);

  tmp = fn;
  fn = fn->fn_next;
  free(tmp);
 }

 free(f);
}
