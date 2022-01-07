
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_data_page {int commit; } ;


 size_t BUF_PAGE_HDR_SIZE ;
 size_t local_read (int *) ;

size_t ring_buffer_page_len(void *page)
{
 return local_read(&((struct buffer_data_page *)page)->commit)
  + BUF_PAGE_HDR_SIZE;
}
