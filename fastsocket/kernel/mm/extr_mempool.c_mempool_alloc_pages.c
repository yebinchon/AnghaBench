
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* alloc_pages (int ,int) ;

void *mempool_alloc_pages(gfp_t gfp_mask, void *pool_data)
{
 int order = (int)(long)pool_data;
 return alloc_pages(gfp_mask, order);
}
