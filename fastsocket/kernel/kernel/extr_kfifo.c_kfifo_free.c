
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {struct kfifo* buffer; } ;


 int kfree (struct kfifo*) ;

void kfifo_free(struct kfifo *fifo)
{
 kfree(fifo->buffer);
 kfree(fifo);
}
