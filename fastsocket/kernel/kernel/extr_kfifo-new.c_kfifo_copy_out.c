
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct __kfifo {int mask; unsigned int esize; scalar_t__ data; } ;


 int memcpy (void*,scalar_t__,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int smp_wmb () ;

__attribute__((used)) static void kfifo_copy_out(struct __kfifo *fifo, void *dst,
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

 memcpy(dst, fifo->data + off, l);
 memcpy(dst + l, fifo->data, len - l);




 smp_wmb();
}
