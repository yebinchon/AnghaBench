
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int dummy; } ;
typedef void buffer_data_page ;


 int GFP_KERNEL ;
 unsigned long __get_free_page (int ) ;
 int rb_init_page (void*) ;

void *ring_buffer_alloc_read_page(struct ring_buffer *buffer)
{
 struct buffer_data_page *bpage;
 unsigned long addr;

 addr = __get_free_page(GFP_KERNEL);
 if (!addr)
  return ((void*)0);

 bpage = (void *)addr;

 rb_init_page(bpage);

 return bpage;
}
