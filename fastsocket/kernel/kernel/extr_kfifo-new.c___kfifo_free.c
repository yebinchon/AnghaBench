
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {scalar_t__ mask; int * data; scalar_t__ esize; scalar_t__ out; scalar_t__ in; } ;


 int kfree (int *) ;

void __kfifo_free(struct __kfifo *fifo)
{
 kfree(fifo->data);
 fifo->in = 0;
 fifo->out = 0;
 fifo->esize = 0;
 fifo->data = ((void*)0);
 fifo->mask = 0;
}
