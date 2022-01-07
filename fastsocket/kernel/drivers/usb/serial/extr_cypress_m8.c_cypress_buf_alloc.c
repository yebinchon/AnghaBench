
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cypress_buf {unsigned int buf_size; int * buf_buf; int * buf_put; int * buf_get; } ;


 int GFP_KERNEL ;
 int kfree (struct cypress_buf*) ;
 void* kmalloc (unsigned int,int ) ;

__attribute__((used)) static struct cypress_buf *cypress_buf_alloc(unsigned int size)
{

 struct cypress_buf *cb;


 if (size == 0)
  return ((void*)0);

 cb = kmalloc(sizeof(struct cypress_buf), GFP_KERNEL);
 if (cb == ((void*)0))
  return ((void*)0);

 cb->buf_buf = kmalloc(size, GFP_KERNEL);
 if (cb->buf_buf == ((void*)0)) {
  kfree(cb);
  return ((void*)0);
 }

 cb->buf_size = size;
 cb->buf_get = cb->buf_put = cb->buf_buf;

 return cb;

}
