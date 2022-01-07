
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {unsigned int mask; unsigned char* data; scalar_t__ out; } ;


 int __KFIFO_PEEK (unsigned char*,scalar_t__,unsigned int) ;

__attribute__((used)) static unsigned int __kfifo_peek_n(struct __kfifo *fifo, size_t recsize)
{
 unsigned int l;
 unsigned int mask = fifo->mask;
 unsigned char *data = fifo->data;

 l = __KFIFO_PEEK(data, fifo->out, mask);

 if (--recsize)
  l |= __KFIFO_PEEK(data, fifo->out + 1, mask) << 8;

 return l;
}
