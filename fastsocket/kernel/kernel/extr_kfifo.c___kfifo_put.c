
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int size; int in; int out; scalar_t__ buffer; } ;


 int memcpy (scalar_t__,unsigned char const*,unsigned int) ;
 unsigned int min (unsigned int,int) ;
 int smp_mb () ;
 int smp_wmb () ;

unsigned int __kfifo_put(struct kfifo *fifo,
   const unsigned char *buffer, unsigned int len)
{
 unsigned int l;

 len = min(len, fifo->size - fifo->in + fifo->out);






 smp_mb();


 l = min(len, fifo->size - (fifo->in & (fifo->size - 1)));
 memcpy(fifo->buffer + (fifo->in & (fifo->size - 1)), buffer, l);


 memcpy(fifo->buffer, buffer + l, len - l);






 smp_wmb();

 fifo->in += len;

 return len;
}
