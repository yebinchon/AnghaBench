
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* fn_next; } ;
typedef TYPE_1__ fifonode_t ;
struct TYPE_5__ {TYPE_1__* f_head; } ;
typedef TYPE_2__ fifo_t ;



int
fifo_len(fifo_t *f)
{
 fifonode_t *fn;
 int i;

 for (i = 0, fn = f->f_head; fn; fn = fn->fn_next, i++);

 return (i);
}
