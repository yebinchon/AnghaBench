
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kfifo {unsigned char* buffer; unsigned int size; int * lock; scalar_t__ out; scalar_t__ in; } ;
typedef int spinlock_t ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 struct kfifo* ERR_PTR (int ) ;
 int is_power_of_2 (unsigned int) ;
 struct kfifo* kmalloc (int,int ) ;

struct kfifo *kfifo_init(unsigned char *buffer, unsigned int size,
    gfp_t gfp_mask, spinlock_t *lock)
{
 struct kfifo *fifo;


 BUG_ON(!is_power_of_2(size));

 fifo = kmalloc(sizeof(struct kfifo), gfp_mask);
 if (!fifo)
  return ERR_PTR(-ENOMEM);

 fifo->buffer = buffer;
 fifo->size = size;
 fifo->in = fifo->out = 0;
 fifo->lock = lock;

 return fifo;
}
