
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {unsigned int mask; unsigned char* data; scalar_t__ in; } ;


 int __KFIFO_POKE (unsigned char*,scalar_t__,unsigned int,unsigned int) ;

__attribute__((used)) static void __kfifo_poke_n(struct __kfifo *fifo, unsigned int n, size_t recsize)
{
 unsigned int mask = fifo->mask;
 unsigned char *data = fifo->data;

 __KFIFO_POKE(data, fifo->in, mask, n);

 if (recsize > 1)
  __KFIFO_POKE(data, fifo->in + 1, mask, n >> 8);
}
