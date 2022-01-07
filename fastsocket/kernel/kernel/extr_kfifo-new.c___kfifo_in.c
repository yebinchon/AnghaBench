
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {unsigned int in; } ;


 int kfifo_copy_in (struct __kfifo*,void const*,unsigned int,unsigned int) ;
 unsigned int kfifo_unused (struct __kfifo*) ;

unsigned int __kfifo_in(struct __kfifo *fifo,
  const void *buf, unsigned int len)
{
 unsigned int l;

 l = kfifo_unused(fifo);
 if (len > l)
  len = l;

 kfifo_copy_in(fifo, buf, len, fifo->in);
 fifo->in += len;
 return len;
}
