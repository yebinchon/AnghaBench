
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {size_t esize; unsigned int mask; int * data; scalar_t__ out; scalar_t__ in; } ;
typedef int gfp_t ;


 int EINVAL ;
 int ENOMEM ;
 int is_power_of_2 (unsigned int) ;
 int * kmalloc (unsigned int,int ) ;
 unsigned int rounddown_pow_of_two (unsigned int) ;

int __kfifo_alloc(struct __kfifo *fifo, unsigned int size,
  size_t esize, gfp_t gfp_mask)
{




 if (!is_power_of_2(size))
  size = rounddown_pow_of_two(size);

 fifo->in = 0;
 fifo->out = 0;
 fifo->esize = esize;

 if (size < 2) {
  fifo->data = ((void*)0);
  fifo->mask = 0;
  return -EINVAL;
 }

 fifo->data = kmalloc(size * esize, gfp_mask);

 if (!fifo->data) {
  fifo->mask = 0;
  return -ENOMEM;
 }
 fifo->mask = size - 1;

 return 0;
}
