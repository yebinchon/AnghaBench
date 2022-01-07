
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oti6858_buf {unsigned int buf_size; int * buf_buf; int * buf_put; int * buf_get; } ;


 int GFP_KERNEL ;
 int kfree (struct oti6858_buf*) ;
 void* kmalloc (unsigned int,int ) ;

__attribute__((used)) static struct oti6858_buf *oti6858_buf_alloc(unsigned int size)
{
 struct oti6858_buf *pb;

 if (size == 0)
  return ((void*)0);

 pb = kmalloc(sizeof(struct oti6858_buf), GFP_KERNEL);
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
