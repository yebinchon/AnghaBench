
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_page {TYPE_1__* page; } ;
struct TYPE_2__ {void* data; } ;



__attribute__((used)) static inline void *__rb_page_index(struct buffer_page *bpage, unsigned index)
{
 return bpage->page->data + index;
}
