
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t n; int data; scalar_t__ len; scalar_t__ head; scalar_t__ tail; } ;
typedef TYPE_1__ msnd_fifo ;


 int ENOMEM ;
 int msnd_fifo_free (TYPE_1__*) ;
 int vmalloc (size_t) ;

int msnd_fifo_alloc(msnd_fifo *f, size_t n)
{
 msnd_fifo_free(f);
 f->data = vmalloc(n);
 f->n = n;
 f->tail = 0;
 f->head = 0;
 f->len = 0;

 if (!f->data)
  return -ENOMEM;

 return 0;
}
