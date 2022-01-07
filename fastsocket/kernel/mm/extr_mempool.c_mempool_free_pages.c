
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __free_pages (void*,int) ;

void mempool_free_pages(void *element, void *pool_data)
{
 int order = (int)(long)pool_data;
 __free_pages(element, order);
}
