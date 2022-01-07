
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {size_t esize; unsigned int mask; void* data; scalar_t__ out; scalar_t__ in; } ;


 int EINVAL ;
 int is_power_of_2 (unsigned int) ;
 unsigned int rounddown_pow_of_two (unsigned int) ;

int __kfifo_init(struct __kfifo *fifo, void *buffer,
  unsigned int size, size_t esize)
{
 size /= esize;

 if (!is_power_of_2(size))
  size = rounddown_pow_of_two(size);

 fifo->in = 0;
 fifo->out = 0;
 fifo->esize = esize;
 fifo->data = buffer;

 if (size < 2) {
  fifo->mask = 0;
  return -EINVAL;
 }
 fifo->mask = size - 1;

 return 0;
}
