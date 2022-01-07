
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {unsigned int out; } ;


 unsigned int __kfifo_out_peek (struct __kfifo*,void*,unsigned int) ;

unsigned int __kfifo_out(struct __kfifo *fifo,
  void *buf, unsigned int len)
{
 len = __kfifo_out_peek(fifo, buf, len);
 fifo->out += len;
 return len;
}
