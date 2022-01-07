
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int dummy; } ;


 int free_page (unsigned long) ;

void ring_buffer_free_read_page(struct ring_buffer *buffer, void *data)
{
 free_page((unsigned long)data);
}
