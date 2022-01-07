
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* fn_next; void* fn_data; } ;
typedef TYPE_1__ fifonode_t ;
struct TYPE_6__ {TYPE_1__* f_tail; TYPE_1__* f_head; } ;
typedef TYPE_2__ fifo_t ;


 TYPE_1__* xmalloc (int) ;

void
fifo_add(fifo_t *f, void *data)
{
 fifonode_t *fn = xmalloc(sizeof (fifonode_t));

 fn->fn_data = data;
 fn->fn_next = ((void*)0);

 if (f->f_tail == ((void*)0))
  f->f_head = f->f_tail = fn;
 else {
  f->f_tail->fn_next = fn;
  f->f_tail = fn;
 }
}
