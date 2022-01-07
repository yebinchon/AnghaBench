
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf {unsigned int buf_size; int * buf_buf; int * buf_put; int * buf_get; } ;


 int GFP_KERNEL ;
 int kfree (struct ringbuf*) ;
 void* kmalloc (unsigned int,int ) ;

__attribute__((used)) static inline struct ringbuf *alloc_ringbuf(unsigned int size)
{
 struct ringbuf *pb;

 if (size == 0)
  return ((void*)0);

 pb = kmalloc(sizeof(*pb), GFP_KERNEL);
 if (pb == ((void*)0))
  return ((void*)0);

 pb->buf_buf = kmalloc(size, GFP_KERNEL);
 if (pb->buf_buf == ((void*)0)) {
  kfree(pb);
  return ((void*)0);
 }

 pb->buf_size = size;
 pb->buf_get = pb->buf_put = pb->buf_buf;

 return pb;
}
