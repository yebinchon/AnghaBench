
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* fn_next; void* fn_data; } ;
typedef TYPE_1__ fifonode_t ;
struct TYPE_6__ {int * f_tail; TYPE_1__* f_head; } ;
typedef TYPE_2__ fifo_t ;


 int free (TYPE_1__*) ;

void *
fifo_remove(fifo_t *f)
{
 fifonode_t *fn;
 void *data;

 if ((fn = f->f_head) == ((void*)0))
  return (((void*)0));

 data = fn->fn_data;
 if ((f->f_head = fn->fn_next) == ((void*)0))
  f->f_tail = ((void*)0);

 free(fn);

 return (data);
}
