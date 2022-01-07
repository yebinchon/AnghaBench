
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {int in; int out; int size; scalar_t__ buffer; } ;


 int memcpy (unsigned char*,scalar_t__,unsigned int) ;
 unsigned int min (unsigned int,int) ;
 int smp_mb () ;
 int smp_rmb () ;

unsigned int __kfifo_get(struct kfifo *fifo,
    unsigned char *buffer, unsigned int len)
{
 unsigned int l;

 len = min(len, fifo->in - fifo->out);






 smp_rmb();


 l = min(len, fifo->size - (fifo->out & (fifo->size - 1)));
 memcpy(buffer, fifo->buffer + (fifo->out & (fifo->size - 1)), l);


 memcpy(buffer + l, fifo->buffer, len - l);






 smp_mb();

 fifo->out += len;

 return len;
}
