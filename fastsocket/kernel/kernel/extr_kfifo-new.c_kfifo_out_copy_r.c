
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {scalar_t__ out; } ;


 unsigned int __kfifo_peek_n (struct __kfifo*,size_t) ;
 int kfifo_copy_out (struct __kfifo*,void*,unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int kfifo_out_copy_r(struct __kfifo *fifo,
 void *buf, unsigned int len, size_t recsize, unsigned int *n)
{
 *n = __kfifo_peek_n(fifo, recsize);

 if (len > *n)
  len = *n;

 kfifo_copy_out(fifo, buf, len, fifo->out + recsize);
 return len;
}
