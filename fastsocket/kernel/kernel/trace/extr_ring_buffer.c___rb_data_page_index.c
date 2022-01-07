
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_data_page {void* data; } ;



__attribute__((used)) static inline void *
__rb_data_page_index(struct buffer_data_page *bpage, unsigned index)
{
 return bpage->data + index;
}
