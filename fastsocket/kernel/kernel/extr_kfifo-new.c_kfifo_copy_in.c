
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {int mask; unsigned int esize; scalar_t__ data; } ;


 int memcpy (scalar_t__,void const*,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int smp_wmb () ;

__attribute__((used)) static void kfifo_copy_in(struct __kfifo *fifo, const void *src,
  unsigned int len, unsigned int off)
{
 unsigned int size = fifo->mask + 1;
 unsigned int esize = fifo->esize;
 unsigned int l;

 off &= fifo->mask;
 if (esize != 1) {
  off *= esize;
  size *= esize;
  len *= esize;
 }
 l = min(len, size - off);

 memcpy(fifo->data + off, src, l);
 memcpy(fifo->data, src + l, len - l);




 smp_wmb();
}
