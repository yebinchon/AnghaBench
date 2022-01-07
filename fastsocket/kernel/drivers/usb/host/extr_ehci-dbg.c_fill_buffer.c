
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_buffer {char* output_buf; int (* fill_func ) (struct debug_buffer*) ;int count; int alloc_size; } ;


 int ENOMEM ;
 int stub1 (struct debug_buffer*) ;
 scalar_t__ vmalloc (int ) ;

__attribute__((used)) static int fill_buffer(struct debug_buffer *buf)
{
 int ret = 0;

 if (!buf->output_buf)
  buf->output_buf = (char *)vmalloc(buf->alloc_size);

 if (!buf->output_buf) {
  ret = -ENOMEM;
  goto out;
 }

 ret = buf->fill_func(buf);

 if (ret >= 0) {
  buf->count = ret;
  ret = 0;
 }

out:
 return ret;
}
