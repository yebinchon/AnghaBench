
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edge_buf {unsigned int buf_size; int * buf_buf; int * buf_put; int * buf_get; } ;


 int GFP_KERNEL ;
 int kfree (struct edge_buf*) ;
 void* kmalloc (unsigned int,int ) ;

__attribute__((used)) static struct edge_buf *edge_buf_alloc(unsigned int size)
{
 struct edge_buf *eb;


 if (size == 0)
  return ((void*)0);

 eb = kmalloc(sizeof(struct edge_buf), GFP_KERNEL);
 if (eb == ((void*)0))
  return ((void*)0);

 eb->buf_buf = kmalloc(size, GFP_KERNEL);
 if (eb->buf_buf == ((void*)0)) {
  kfree(eb);
  return ((void*)0);
 }

 eb->buf_size = size;
 eb->buf_get = eb->buf_put = eb->buf_buf;

 return eb;
}
