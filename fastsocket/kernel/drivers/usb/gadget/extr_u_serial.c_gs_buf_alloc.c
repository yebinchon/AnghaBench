
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gs_buf {unsigned int buf_size; int * buf_buf; int * buf_get; int * buf_put; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc (unsigned int,int ) ;

__attribute__((used)) static int gs_buf_alloc(struct gs_buf *gb, unsigned size)
{
 gb->buf_buf = kmalloc(size, GFP_KERNEL);
 if (gb->buf_buf == ((void*)0))
  return -ENOMEM;

 gb->buf_size = size;
 gb->buf_put = gb->buf_buf;
 gb->buf_get = gb->buf_buf;

 return 0;
}
