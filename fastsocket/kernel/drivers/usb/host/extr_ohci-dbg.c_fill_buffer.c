
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_buffer {char* page; int (* fill_func ) (struct debug_buffer*) ;int count; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ get_zeroed_page (int ) ;
 int stub1 (struct debug_buffer*) ;

__attribute__((used)) static int fill_buffer(struct debug_buffer *buf)
{
 int ret = 0;

 if (!buf->page)
  buf->page = (char *)get_zeroed_page(GFP_KERNEL);

 if (!buf->page) {
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
