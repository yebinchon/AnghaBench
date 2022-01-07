
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {int dummy; } ;


 unsigned int __kfifo_peek_n (struct __kfifo*,size_t) ;

unsigned int __kfifo_len_r(struct __kfifo *fifo, size_t recsize)
{
 return __kfifo_peek_n(fifo, recsize);
}
