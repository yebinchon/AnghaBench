
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {unsigned long pages; } ;


 unsigned long BUF_PAGE_SIZE ;

unsigned long ring_buffer_size(struct ring_buffer *buffer)
{
 return BUF_PAGE_SIZE * buffer->pages;
}
