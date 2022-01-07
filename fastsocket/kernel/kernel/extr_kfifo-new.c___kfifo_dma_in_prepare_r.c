
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct __kfifo {scalar_t__ in; } ;


 int BUG () ;
 unsigned int __kfifo_max_r (unsigned int,size_t) ;
 unsigned int kfifo_unused (struct __kfifo*) ;
 unsigned int setup_sgl (struct __kfifo*,struct scatterlist*,int,unsigned int,scalar_t__) ;

unsigned int __kfifo_dma_in_prepare_r(struct __kfifo *fifo,
 struct scatterlist *sgl, int nents, unsigned int len, size_t recsize)
{
 if (!nents)
  BUG();

 len = __kfifo_max_r(len, recsize);

 if (len + recsize > kfifo_unused(fifo))
  return 0;

 return setup_sgl(fifo, sgl, nents, len, fifo->in + recsize);
}
