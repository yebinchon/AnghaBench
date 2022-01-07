
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {scalar_t__ in; } ;


 int __kfifo_poke_n (struct __kfifo*,unsigned int,size_t) ;
 int kfifo_copy_in (struct __kfifo*,void const*,unsigned int,scalar_t__) ;
 unsigned int kfifo_unused (struct __kfifo*) ;

unsigned int __kfifo_in_r(struct __kfifo *fifo, const void *buf,
  unsigned int len, size_t recsize)
{
 if (len + recsize > kfifo_unused(fifo))
  return 0;

 __kfifo_poke_n(fifo, len, recsize);

 kfifo_copy_in(fifo, buf, len, fifo->in + recsize);
 fifo->in += len + recsize;
 return len;
}
