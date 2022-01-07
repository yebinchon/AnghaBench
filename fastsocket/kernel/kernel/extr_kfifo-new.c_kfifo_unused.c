
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {unsigned int mask; unsigned int in; unsigned int out; } ;



__attribute__((used)) static inline unsigned int kfifo_unused(struct __kfifo *fifo)
{
 return (fifo->mask + 1) - (fifo->in - fifo->out);
}
